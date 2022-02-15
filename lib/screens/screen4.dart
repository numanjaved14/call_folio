// import 'dart:html';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

import '../providers/user_credentials.dart' as userProvider;
import './tabs_screen.dart';

class screen4 extends StatefulWidget {
  static const routeName = '/screen4';

  @override
  _screen4State createState() => _screen4State();
}

class _screen4State extends State<screen4> {
  String? uid, phoneNumber, callFolioNumber, name, gender;
  String? downloadURL;

  final nameController = TextEditingController();

  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseStorage firebaseStorage = FirebaseStorage.instance;

  Uint8List? _image;

  String inputData(auth) {
    final User user = auth.currentUser;
    uid = user.uid;
    return uid!;
    // here you write the codes to input the data into firestore
  }

  // pickImage(ImageSource source) async {
  //   final ImagePicker imagePicker = ImagePicker();
  //   file = await imagePicker.pickImage(source: source);

  //   if (file != null) {
  //     return await file!.readAsBytes();
  //   }
  //   print('No Image Selected');
  // }

  selectImage() async {
    Uint8List file = await pickImage(ImageSource.gallery);
    setState(() {
      _image = file;
    });
  }

  pickImage(ImageSource source) async {
    final ImagePicker imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(source: source);

    if (file != null) {
      return await file.readAsBytes();
    }
    print('No Image Selected');
  }

  Future<String> uploadImageToStorage(
      String childName, Uint8List file, bool isPost) async {
    Reference reference =
        firebaseStorage.ref().child(childName).child(auth.currentUser!.uid);
    UploadTask uploadTask = reference.putData(file);
    TaskSnapshot taskSnapshot = await uploadTask;
    downloadURL = await taskSnapshot.ref.getDownloadURL();
    return downloadURL!;
  }

  @override
  Widget build(BuildContext context) {
    final userprovider = Provider.of<userProvider.User>(
      context,
      listen: false,
    );

    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        leading: BackButton(color: Color(0xff5741A0)),
        backgroundColor: const Color(0xffE5E5E5),
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('callFolio'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 37, left: 27),
              child: Container(
                child: _image != null
                    ? SizedBox(
                        height: 100,
                        width: 100,
                        child: FittedBox(
                            fit: BoxFit.cover, child: Image.memory(_image!)),
                      )
                    : Stack(
                        children: [
                          // _image != null
                          //     ? SizedBox(
                          //         height: 100, width: 100, child: Image.memory(_image!))
                          //     : Image(image: AssetImage('assets/images/Ellipse 38')),
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset('assets/images/Ellipse 38.png'),
                          ),
                          Positioned(
                            left: 38,
                            right: 38,
                            top: 40,
                            bottom: 40,
                            child: SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset('assets/images/Camera.png')),
                          ),
                          Positioned(
                              left: 74,
                              right: 7,
                              top: 73,
                              bottom: 7,
                              child: InkWell(
                                onTap: () async {
                                  await selectImage();
                                  // await uploadImageToStorage('Post', _image!, false);
                                },
                                child: SizedBox(
                                    height: 20,
                                    width: 24,
                                    child:
                                        Image.asset('assets/images/Add.png')),
                              )),
                        ],
                      ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 22, left: 24),
              child: Text(
                'Here we go!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24, right: 90),
              child: Text(
                'Please Provide your name, gender and optional profile photo',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 27, left: 39),
              child: Text(
                'Full Name',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 7, left: 33),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 45,
                  width: 324,
                  color: Colors.white,
                  child: Container(
                    width: 254,
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                          hintText: 'Enter your Full Name',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 10),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(bottom: 3, left: 20),
                          labelStyle: TextStyle(
                            fontSize: 10,
                          )
                          // border: OutlineInputBorder(
                          //   borderSide: BorderSide(),
                          // ),
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 17, left: 39),
              child: Text(
                'Gender',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 7, left: 37, right: 32),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                        child: SizedBox(
                          height: 45,
                          // width: 324,
                          child: Container(
                            color: Colors.grey.shade400,
                            // decoration: BoxDecoration(border: Border.all(color: Colors.deepPurple)),
                            child: FlatButton(
                              onPressed: () {
                                gender = 'male';
                              },
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                        Image.asset('assets/images/male.png'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Male',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            // child: GroupButton(
                            //   borderRadius: BorderRadius.only(),
                            //   isRadio: true,
                            //   spacing: 0,
                            //   onSelected: (index, isSelected) =>
                            //       print('$index button is selected'),
                            //   buttons: [
                            //     'Male',
                            //     // 'Female',
                            //   ],
                            // ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        child: SizedBox(
                          height: 45,
                          // width: 324,
                          child: Container(
                            color: Colors.white,
                            child: FlatButton(
                              onPressed: () {
                                gender = 'female';
                              },
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                        Image.asset('assets/images/female.png'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Female',
                                    style: TextStyle(color: Color(0xff7D7C7C)),
                                  ),
                                ],
                              ),
                            ),
                            // child: Container(
                            //   color: Colors.white,
                            //   child: GroupButton(
                            //     borderRadius: BorderRadius.only(),
                            //     isRadio: true,
                            //     spacing: 0,
                            //     onSelected: (index, isSelected) =>
                            //         print('$index button is selected'),
                            //     buttons: [
                            //       // 'Male',
                            //       'Female',
                            //     ],
                            //   ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 55),
                child: ElevatedButton(
                  onPressed: () async {
                    inputData(auth);
                    try {
                      await uploadImageToStorage('Post', _image!, false);
                    } catch (error) {
                      var snackBar = SnackBar(content: Text(error.toString()));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      // downloadURL = '';
                    }
                    debugPrint(downloadURL);
                    userprovider.addUser(userProvider.UserModel(
                        id: uid,
                        callFolioNumber: '123',
                        gender: gender,
                        name: nameController.text,
                        phoneNumber: '1234567',
                        picture: downloadURL));
                    debugPrint(uid);
                    // Navigator.of(context).pushNamed(TabsScreen.routeName);
                  },
                  child: Text('Next'),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Theme.of(context).primaryColor,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 78),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
