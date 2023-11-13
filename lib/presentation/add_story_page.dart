import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:storyapp_intermediate/bloc/add_new_story/add_new_story_bloc.dart';
import 'package:storyapp_intermediate/bloc/get_all_story/get_all_story_bloc.dart';
import 'package:storyapp_intermediate/common/assets_path.dart';
import 'package:storyapp_intermediate/data/models/request/request_add_model.dart';
import 'package:image_cropper/image_cropper.dart';

class AddStoryPage extends StatefulWidget {
  static const routeName = '/addStoryPage';
  const AddStoryPage({
    super.key,
  });

  @override
  State<AddStoryPage> createState() => _AddStoryPageState();
}

class _AddStoryPageState extends State<AddStoryPage> {
  final descriptionTextController = TextEditingController();
  final imageFile = ValueNotifier<XFile?>(null);
  final imagePath = ValueNotifier<String?>(null);

  Future<void> _onGalleryView() async {
    final picker = ImagePicker();

    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      await _cropImage(pickedFile.path);
    }
  }

  Future<void> _onCameraView() async {
    final isAndroid = defaultTargetPlatform == TargetPlatform.android;
    final isiOS = defaultTargetPlatform == TargetPlatform.iOS;
    final isNotMobile = !(isAndroid || isiOS);
    if (isNotMobile) return;

    final picker = ImagePicker();

    final pickedFile = await picker.pickImage(
      source: ImageSource.camera,
    );
    if (pickedFile != null) {
      await _cropImage(pickedFile.path);
    }
  }

  Future<void> _cropImage(String imagePath) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: imagePath,
      compressFormat: ImageCompressFormat.jpg,
      compressQuality: 100,
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        ),
        WebUiSettings(
          context: context,
          presentStyle: CropperPresentStyle.dialog,
          boundary: const CroppieBoundary(
            width: 520,
            height: 520,
          ),
          viewPort:
              const CroppieViewPort(width: 480, height: 480, type: 'circle'),
          enableExif: true,
          enableZoom: true,
          showZoomer: true,
        ),
      ],
    );

    if (croppedFile != null) {
      setImageFile(XFile(croppedFile.path));
    }
  }

  void setImageFile(XFile? value) {
    imageFile.value = value;
    imagePath.value = value?.path;
  }

  Widget _showImage(String path) {
    return kIsWeb
        ? Image.network(
            path,
            fit: BoxFit.contain,
          )
        : Image.file(
            File(path),
            fit: BoxFit.contain,
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('addStory'),
      ),
      body: BlocConsumer<AddNewStoryBloc, AddNewStoryState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            error: (data) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('Error: $data')));
            },
            loaded: (model) {
              context.read<GetAllStoryBloc>().add(const GetAllStoryEvent.get());
              context.pop();
            },
          );
        },
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            children: [
              Text(
                'berhasil',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 20),
              addStoryForm(context, state),
            ],
          );
        },
      ),
    );
  }

  Column addStoryForm(BuildContext context, AddNewStoryState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('addStoryPicture'),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).disabledColor,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: [
              ValueListenableBuilder<String?>(
                valueListenable: imagePath,
                builder: (context, value, widget) {
                  if (value != null) {
                    return _showImage(value);
                  }
                  return Image.asset(
                    AssetsPath.placeHodler,
                    height: 200,
                  );
                },
              ),
              const SizedBox(height: 10),
              photoOptionbutton(context),
            ],
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: descriptionTextController,
          decoration: const InputDecoration(
            label: Text('description'),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: 'writeYourStory...',
            border: OutlineInputBorder(),
          ),
          minLines: 4,
          maxLines: 8,
        ),
        const SizedBox(height: 20),
        BlocBuilder<GetAllStoryBloc, GetAllStoryState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return ElevatedButton(
                  onPressed: () async {
                    final imageBytes = await imageFile.value?.readAsBytes();
                    final model = RequestAddModel(
                      description: descriptionTextController.text,
                      fileName: imageFile.value!.name,
                      imageByte: imageBytes!,
                      lat: 10.0,
                      lon: 10.0,
                    );

                    context
                        .read<AddNewStoryBloc>()
                        .add(AddNewStoryEvent.add(model));
                  },
                  child: const Text(
                    '.send.toUpperCase()',
                  ),
                );
              },
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            );
          },
        ),
      ],
    );
  }

  Row photoOptionbutton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: _onGalleryView,
          child: const Row(
            children: [
              Icon(Icons.photo),
              SizedBox(width: 5),
              Text('.gallery'),
            ],
          ),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: _onCameraView,
          child: const Row(
            children: [
              Icon(Icons.camera_alt_outlined),
              SizedBox(width: 5),
              Text(".camera"),
            ],
          ),
        ),
      ],
    );
  }

  Widget imagePickBottomsheet() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: const Icon(Icons.photo),
          title: const Text('.gallery'),
          onTap: _onGalleryView,
        ),
        ListTile(
          leading: const Icon(Icons.camera_alt_outlined),
          title: const Text('.camera'),
          onTap: _onCameraView,
        ),
      ],
    );
  }
}
