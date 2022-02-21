import 'dart:io';

import 'package:flutter/material.dart';
import 'package:garage/screens/vehicle_screen.dart';

class CarWidget extends StatefulWidget {
  const CarWidget({Key? key, this.data, required this.deleteCar})
      : super(key: key);

  final data;
  final Function deleteCar;

  @override
  _CarWidgetState createState() => _CarWidgetState();
}

class _CarWidgetState extends State<CarWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) =>
                VehicleScreen(data: widget.data, deleteCar: widget.deleteCar)));
      },
      child: Container(
        height: 200,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff000000).withOpacity(0.16),
              spreadRadius: 0,
              blurRadius: 6,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            widget.data['url'].toString().substring(0, 6) == "assets"
                ? Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                        image: DecorationImage(
                          image: AssetImage(widget.data['url']),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    flex: 2,
                  )
                : Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                        image: DecorationImage(
                          image: FileImage(File(widget.data['url'])),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    flex: 2,
                  ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            child: Text(
                          widget.data['name'],
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Color.fromARGB(255, 46, 131, 173),
                                offset: Offset(5.0, 5.0),
                              ),
                            ],
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: "Georgia",
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            child: Text(
                          widget.data['godiste'],
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: Colors.blueGrey,
                            fontFamily: "Georgia",
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            child: Text(
                          widget.data['cena'] + " e",
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: Colors.blueGrey,
                            fontFamily: "Georgia",
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ],
                    ),
                  ],
                ),
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
