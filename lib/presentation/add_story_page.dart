import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:storyapp_intermediate/common/constans.dart';
import 'package:storyapp_intermediate/data/models/new_request/add_newstory_request_model.dart';
import 'package:storyapp_intermediate/presentation/home_page.dart';

import '../common/assets_path.dart';
import '../new_bloc/addnew_story/addnew_story_bloc.dart';
import '../new_bloc/get_all/get_all_bloc.dart';

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
            toolbarTitle: 'Crop Image',
            toolbarColor: Colors.black,
            toolbarWidgetColor: primaryColor,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Crop Image',
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
      _setImageFile(XFile(croppedFile.path));
    }
  }

  void _setImageFile(XFile? value) {
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

  Row _photoOptionbutton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: _onGalleryView,
          child: const Row(
            children: [
              Icon(Icons.photo),
              SizedBox(width: 5),
              Text('Gallery'),
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
              Text("Camera"),
            ],
          ),
        ),
      ],
    );
  }

  Column addStoryForm(BuildContext context, AddnewStoryState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).disabledColor,
            ),
            borderRadius: BorderRadius.circular(20),
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
                    AssetsPath.placeHolder,
                    height: 200,
                  );
                },
              ),
              const SizedBox(height: 10),
              _photoOptionbutton(context),
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
        BlocBuilder<AddnewStoryBloc, AddnewStoryState>(
          builder: (context, state) {
            if (state is AddnewStoryLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () async {
                final imageBytes = await imageFile.value?.readAsBytes();
                final fileName = imageFile.value?.name;
                final description = descriptionTextController.text;

                if (fileName != null && description != null) {
                  final model = AddNewStoryRequestModel(
                    description: description,
                    fileName: fileName,
                    imageByte: imageBytes!,
                    lat: 10.0,
                    lon: 10.0,
                  );
                  if (mounted) {
                    context
                        .read<AddnewStoryBloc>()
                        .add(DoAddnewStoryEvent(addStoryRequest: model));
                  }
                } else {
                  if (mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content:
                            Text('FileName and Description cannot be null.'),
                      ),
                    );
                  }
                }
              },
              child: const Text(
                'kirim',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Story'),
      ),
      body: BlocConsumer<AddnewStoryBloc, AddnewStoryState>(
        listener: (context, state) {
          if (state is AddnewStoryError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Error: ')));
          }
          if (state is AddnewStoryLoaded) {
            context.read<GetAllBloc>().add(GetAllEvent());
            if (mounted) {
              context.go(HomePage.routeName);
            }
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: addStoryForm(context, state),
          );
        },
      ),
    );
  }
}
