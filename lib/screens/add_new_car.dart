import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddCar extends StatefulWidget {
  const AddCar({Key? key, required this.addCar}) : super(key: key);

  final Function addCar;

  @override
  _AddCarState createState() => _AddCarState();
}

class _AddCarState extends State<AddCar> {
  TextEditingController? name = TextEditingController();
  TextEditingController? model = TextEditingController();
  TextEditingController? color = TextEditingController();
  TextEditingController? godiste = TextEditingController();
  TextEditingController? cena = TextEditingController();
  TextEditingController? opis = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    name?.dispose();
    model?.dispose();
    color?.dispose();
    godiste?.dispose();
    cena?.dispose();
    opis?.dispose();
  }

  String? imageFile;

  /// Get from gallery
  _getFromGallery() async {
    XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        imageFile = pickedFile.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF000000).withOpacity(0.16),
                          spreadRadius: 0,
                          blurRadius: 6,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: TextField(
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      controller: name,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(14.5),
                          hintText: "Marka",
                          hintStyle: TextStyle(
                              fontFamily: "Georgia",
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff000000).withOpacity(0.16),
                          spreadRadius: 0,
                          blurRadius: 6,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: TextField(
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      controller: model,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(14.5),
                          hintText: "Model",
                          hintStyle: TextStyle(
                              fontFamily: "Georgia",
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff000000).withOpacity(0.16),
                          spreadRadius: 0,
                          blurRadius: 6,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: TextField(
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      controller: color,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(14.5),
                          hintText: "Boja",
                          hintStyle: TextStyle(
                              fontFamily: "Georgia",
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff000000).withOpacity(0.16),
                          spreadRadius: 0,
                          blurRadius: 6,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: TextField(
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      controller: godiste,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(14.5),
                          hintText: "Godina proizvodnje",
                          hintStyle: TextStyle(
                              fontFamily: "Georgia",
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff000000).withOpacity(0.16),
                          spreadRadius: 0,
                          blurRadius: 6,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: TextField(
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      controller: cena,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(14.5),
                          hintText: "Cena",
                          hintStyle: TextStyle(
                              fontFamily: "Georgia",
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF000000).withOpacity(0.16),
                          spreadRadius: 0,
                          blurRadius: 6,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: TextField(
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      controller: opis,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(14.5),
                          hintText: "Opis",
                          hintStyle: TextStyle(
                              fontFamily: "Georgia",
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      _getFromGallery();
                    },
                    child: Container(
                      width: double.infinity,
                      height: 52,
                      padding: const EdgeInsets.only(left: 6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.brown),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6.0)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Kliknite da otvorite galeriju slika",
                              style: TextStyle(
                                  fontFamily: "Georgia",
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                          ),
                          imageFile == null
                              ? Container()
                              : Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    margin: const EdgeInsets.all(5),
                                    height: 50,
                                    width: 50,
                                    child: Image.file(File(imageFile!)),
                                  ),
                                ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  InkWell(
                    onTap: () {
                      if (name!.text.isNotEmpty &&
                          color!.text.isNotEmpty &&
                          model!.text.isNotEmpty &&
                          godiste!.text.isNotEmpty &&
                          cena!.text.isNotEmpty &&
                          opis!.text.isNotEmpty &&
                          imageFile != null) {
                        Navigator.of(context).pop();
                        widget.addCar(name!.text, color!.text, model!.text,
                            godiste!.text, cena!.text, opis!.text, imageFile);
                      } else {}
                    },
                    child: Container(
                      height: 52,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.blueGrey,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff000000).withOpacity(0.16),
                            spreadRadius: 0,
                            blurRadius: 6,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          "Dodaj",
                          style: TextStyle(
                              fontFamily: "Georgia",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
