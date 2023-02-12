import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class addScreen extends StatelessWidget {
  const addScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Uint8List? selectedImage;

    return Scaffold(
      body: selectedImage != null
          ? Container(
              child: Text("I am in center"),
            )
          : Center(
              child: IconButton(
                icon: Icon(Icons.download, size: size.height / 20),
                onPressed: () {
                  showDialog<void>(
                    context: context,
                    // false = user must tap button, true = tap outside dialog
                    builder: (BuildContext dialogContext) {
                      return SimpleDialog(
                        title: Text("Select image from"),
                        children: [
                          SimpleDialogOption(
                            onPressed: () async {
                              selectedImage =
                                  await pickImage(ImageSource.camera);
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.camera,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Camera")
                              ],
                            ),
                          ),
                          SimpleDialogOption(
                            onPressed: () async {
                              selectedImage =
                                  await pickImage(ImageSource.camera);
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.photo_camera_back_outlined,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Gallery")
                              ],
                            ),
                          ),
                          SimpleDialogOption(
                            child: Center(
                                child: Text(
                              "Cancel",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    },
                  );
                },
              ),
            ),
    );
  }
}

Future<Uint8List> pickImage(ImageSource source) async {
  ImagePicker pick = ImagePicker();
  final img = await pick.pickImage(source: source);
  Uint8List image = await img!.readAsBytes();
  return image;
}
