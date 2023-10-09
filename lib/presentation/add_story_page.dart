// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:storyapp_intermediate/bloc/add_story/add_story_bloc.dart';
// import 'package:storyapp_intermediate/data/models/request/request_add_story.dart';
// import 'package:storyapp_intermediate/pages/home_page.dart';

// class AddStoryPage extends StatefulWidget {
//   const AddStoryPage({super.key});

//   @override
//   State<AddStoryPage> createState() => _AddStoryPageState();
// }

// class _AddStoryPageState extends State<AddStoryPage> {
//   TextEditingController? descriptionController;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     descriptionController = TextEditingController();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16),
//         child: ListView(
//           children: [
//             Container(
//               height: 200,
//               width: 200,
//               decoration: BoxDecoration(border: Border.all()),
//             ),
//             const SizedBox(
//               height: 16,
//             ),
//             TextField(
//               controller: descriptionController,
//               decoration: const InputDecoration(labelText: 'Description'),
//             ),
//             const SizedBox(
//               height: 16,
//             ),
//             BlocConsumer<AddStoryBloc, AddStoryState>(
//               listener: (context, state) {
//                 if (state is AddStoryLoaded) {
//                   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//                     content: Text('Login Success'),
//                     backgroundColor: Colors.blue,
//                   ));

//                   Navigator.pop(context, MaterialPageRoute(builder: (context) {
//                     return const HomePage();
//                   }));
//                 }
//               },
//               builder: (context, state) {
//                 if (state is AddStoryLoading) {
//                   return const Center(
//                     child: CircularProgressIndicator(),
//                   );
//                 }

//                 //  onPressed: () {
//                 //       final requestModel = LoginRequestModel(
//                 //           email: emailController!.text,
//                 //           password: passwordController!.text);
//                 //       context.read<LoginBloc>().add(
//                 //             DoLoginEvent(model: requestModel),
//                 //           );
//                 //     },

//                 return ElevatedButton(
//                   onPressed: () {
//                     final requestModel = RequestAddStory(
//                         description: descriptionController!.text);

//                     context
//                         .read<AddStoryBloc>()
//                         .add(DoAddStoryEvent(model: requestModel));
//                   },
//                   child: const Text('Send'),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:storyapp_intermediate/data/models/request/request_add_story_model.dart';
import 'package:storyapp_intermediate/presentation/camera_page.dart';


class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  TextEditingController? descriptionController;

  XFile? picture;

  List<XFile>? multiplePicture;

  void takePicture(XFile file) {
    picture = file;
    setState(() {});
  }

  void takeMultiplePicture(List<XFile> files) {
    multiplePicture = files;
    setState(() {});
  }

  @override
  void initState() {
    descriptionController = TextEditingController();
    super.initState();
  }

  Future<void> getImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final XFile? photo = await picker.pickImage(
      source: source,
      imageQuality: 50,
    );

    if (photo != null) {
      picture = photo;
      setState(() {});
    }
  }

  Future<void> getMultipleImage() async {
    final ImagePicker picker = ImagePicker();
    final List<XFile> photo = await picker.pickMultiImage();

    multiplePicture = photo;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
        // backgroundColor: context.theme.appColors.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            picture != null
                ? SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.file(File(picture!.path)))
                : Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(border: Border.all()),
                  ),
            const SizedBox(
              height: 8,
            ),
            multiplePicture != null
                ? Row(
                    children: [
                      ...multiplePicture!
                          .map((e) => SizedBox(
                              height: 120,
                              width: 120,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Image.file(File(e.path)),
                              )))
                          .toList()
                    ],
                  )
                : SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    // style: ElevatedButton.styleFrom(
                    //   backgroundColor: context.theme.appColors.primary,
                    // ),
                    onPressed: () async {
                      await availableCameras().then((value) => Navigator.push(
                              context, MaterialPageRoute(builder: (_) {
                            return CameraPage(
                              takePicture: takePicture,
                              cameras: value,
                            );
                          })));
                      // getImage(ImageSource.camera);
                    },
                    child: const Text('Camera')),
                const SizedBox(
                  width: 8,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      // backgroundColor: context.theme.appColors.primary,
                      ),
                  onPressed: () {
                    getImage(ImageSource.gallery);
                    // getMultipleImage();
                  },
                  child: const Text(
                    "Galery",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
              maxLines: 3,
            ),
            const SizedBox(
              height: 16,
            ),
            // BlocListener<ProductUpdateCubit, ProductUpdateState>(
            //   listener: (context, state) {
            //     state.maybeWhen(
            //       orElse: () {},
            //       loaded: (model) {
            //         debugPrint(model.toString());
            //         Navigator.pop(context);
            //       },
            //     );
            //   },
            //   child: BlocBuilder<ProductUpdateCubit, ProductUpdateState>(
            //     builder: (context, state) {
            //       return state.maybeWhen(
            //         orElse: () {
            //           return ElevatedButton(
            //             onPressed: () {
            //               final model = RequestAddStoryModel(
            //                   description: descriptionController!.text);
            //               context.read<ProductUpdateCubit>().addProduct(model,
            //                     picture!,);
            //             },
            //             style: ElevatedButton.styleFrom(
            //                 // backgroundColor: context.theme.appColors.primary,
            //                 ),
            //             child: const Text('Submit'),
            //           );
            //         },
            //         loading: () {
            //           return const Center(
            //             child: CircularProgressIndicator(),
            //           );
            //         },
            //       );
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
