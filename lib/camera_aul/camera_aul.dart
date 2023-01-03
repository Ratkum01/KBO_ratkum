import 'dart:io';

import 'package:camera/camera.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

import '../navigation_drawe_page.dart';
import 'camera_page.dart';

class Camera_aul extends StatefulWidget {
  const Camera_aul({Key? key}) : super(key: key);

  @override
  State<Camera_aul> createState() => _Camera_aulState();
}

class _Camera_aulState extends State<Camera_aul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
        backgroundColor: Color.fromARGB(248, 120, 66, 154),
        centerTitle: true,
      ),
      drawer: const NavigationDrawer(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container( decoration: BoxDecoration(
                color: Color.fromARGB(248, 120, 66, 154),
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
            child: IconButton(
              icon: Icon(Icons.camera_alt_outlined, color: Color.fromARGB(255, 255, 255, 255),),style: IconButton.styleFrom(
                  // foregroundColor: Color.fromARGB(248, 120, 66, 154),
                  // backgroundColor: Color.fromARGB(248, 120, 66, 154),
                  // disabledBackgroundColor: Color.fromARGB(248, 120, 66, 154),
                  // hoverColor: Color.fromARGB(248, 120, 66, 154),
                  // focusColor: Color.fromARGB(248, 120, 66, 154),
                  // highlightColor: Color.fromARGB(248, 120, 66, 154),
                ), onPressed: () async {
                 await availableCameras().then( //Проврка камеры есть ли она
                (value) => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CameraPage(cameras: value,),
                  ),
                ),
              );
              },
              // Icons.camera_alt,
              // size: 50,
            ),
          ),
          ElevatedButton( style: ButtonStyle(backgroundColor:MaterialStatePropertyAll<Color>(Color.fromARGB(248, 120, 66, 154)) ),
            
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => const FeedbackDialog());
            },
            child: Text('REPORT', ),
          )
        ],
      )),
    );
  }
}

class FeedbackDialog extends StatefulWidget {
  const FeedbackDialog({Key? key}) : super(key: key);

  @override
  State<FeedbackDialog> createState() => _FeedbackDialogState();
}

class _FeedbackDialogState extends State<FeedbackDialog> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
        key: _formKey,
        child: TextFormField(
          controller: _controller,
          keyboardType: TextInputType.multiline,
          decoration: const InputDecoration(
            hintText: 'Enter your feedback here',
            filled: true,
          ),
          maxLines: 5,
          maxLength: 4096,
          textInputAction: TextInputAction.done,
          validator: (String? text) {
            if (text == null || text.isEmpty) {
              return 'Please enter a value';
            }
            return null;
          },
        ),
      ),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () => Navigator.pop(context),
        ),
        TextButton(
          child: const Text('Send'),
          onPressed: () async {
            // Only if the input form is valid (the user has entered text)
            if (_formKey.currentState!.validate()) {
              // We will use this var to show the result
              // of this operation to the user
              String message;

              try {
                // Get a reference to the `feedback` collection
                final collection =
                    FirebaseFirestore.instance.collection('feedback');

                // Write the server's timestamp and the user's feedback
                await collection.doc().set({
                  'timestamp': FieldValue.serverTimestamp(),
                  'feedback': _controller.text,
                });

                message = 'Feedback sent successfully';
              } catch (e) {
                message = 'Error when sending feedback';
              }

              // Show a snackbar with the result
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(message)));
              Navigator.pop(context);
            }
          },
        )
      ],
    );
  }
}
