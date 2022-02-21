import 'dart:io';

import 'package:flutter/material.dart';

class VehicleScreen extends StatefulWidget {
  const VehicleScreen({Key? key, this.data, required this.deleteCar})
      : super(key: key);

  final data;
  final Function deleteCar;

  @override
  _VehicleScreenState createState() => _VehicleScreenState();
}

class _VehicleScreenState extends State<VehicleScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.white,
        child: Column(
          children: [
            Stack(
              children: [
                widget.data['url'].toString().substring(0, 6) == "assets"
                    ? Container(
                        height: size.height / 2,
                        width: size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(widget.data['url']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : Container(
                        height: size.height / 2,
                        width: size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: FileImage(File(widget.data['url'])),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                Positioned(
                  left: 20,
                  top: 50,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: size.height / 2.5,
              width: double.infinity,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff000000).withOpacity(0.16),
                    spreadRadius: 0,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          const Icon(Icons.drive_eta, size: 18),
                          const Expanded(
                            child: Text(
                              " Marka",
                              style: TextStyle(
                                fontFamily: "Georgia",
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              widget.data['name'],
                              style: const TextStyle(
                                fontFamily: "Georgia",
                                color: Colors.blueGrey,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          const Icon(Icons.palette, size: 18),
                          const Expanded(
                            child: Text(
                              " Boja",
                              style: TextStyle(
                                fontFamily: "Georgia",
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              widget.data['color'],
                              style: const TextStyle(
                                fontFamily: "Georgia",
                                color: Colors.blueGrey,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          const Icon(Icons.toys, size: 18),
                          const Expanded(
                            child: Text(
                              " Model",
                              style: TextStyle(
                                fontFamily: "Georgia",
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              widget.data['model'],
                              style: const TextStyle(
                                fontFamily: "Georgia",
                                color: Colors.blueGrey,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          const Icon(Icons.calendar_today, size: 18),
                          const Expanded(
                            child: Text(
                              " Godina",
                              style: TextStyle(
                                fontFamily: "Georgia",
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              widget.data['godiste'],
                              style: const TextStyle(
                                fontFamily: "Georgia",
                                color: Colors.blueGrey,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          const Icon(Icons.euro, size: 18),
                          const Expanded(
                            child: Text(
                              " Cena",
                              style: TextStyle(
                                fontFamily: "Georgia",
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              widget.data['cena'] + " e",
                              style: const TextStyle(
                                fontFamily: "Georgia",
                                color: Colors.blueGrey,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        Expanded(
                          child: Column(children: [Container(height: 10.0)]),
                        )
                      ]),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: const [
                        Expanded(
                          child: Text(
                            "Opis:",
                            style: TextStyle(
                              fontFamily: "Georgia",
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ]),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        Expanded(
                          child: Text(
                            widget.data['opis'],
                            style: const TextStyle(
                              fontFamily: "Georgia",
                              color: Colors.blueGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ]),
                    ),
                    InkWell(
                      onTap: () {
                        widget.deleteCar(widget.data);
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 10.0),
                        height: 35,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          color: Colors.grey,
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
                            "Obriši vozilo",
                            style: TextStyle(
                              fontFamily: "Georgia",
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
