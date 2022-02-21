import 'package:flutter/material.dart';
import 'package:garage/screens/add_new_car.dart';
import 'package:garage/widgets/car_widget.dart';

class GarageScreen extends StatefulWidget {
  const GarageScreen({Key? key}) : super(key: key);

  @override
  _GarageScreenState createState() => _GarageScreenState();
}

class _GarageScreenState extends State<GarageScreen> {
  // Future<void> readJson() async {
  //   final String response =
  //       await rootBundle.loadString("assets/json/data.json");
  //   final data = await json.decode(response);
  //   setState(() {
  //     _items = data["items"];
  //   });
  // }
  List nova = [];
  List items = [
    {
      "name": "Porsche",
      "model": "718 Boxster Spyder",
      "color": "Metalik",
      "godiste": "2019.",
      "cena": "100.000",
      "url": "assets/images/iris.jfif",
      "opis": "Porsche je više od same vožnje."
    },
    {
      "name": "Audi",
      "model": "A1 Citycarver",
      "color": "Narandzasta",
      "godiste": "2020.",
      "cena": "120.000",
      "url": "assets/images/audi.jpg",
      "opis": "Fokusiran na dinamičku estetiku."
    },
    {
      "name": "Renault",
      "model": "Clio 5",
      "color": "Plava",
      "godiste": "2020.",
      "cena": "20.000",
      "url": "assets/images/clio.jpg",
      "opis": "Zavodljiv gradski automobil."
    },
    {
      "name": "BMW",
      "model": "Z4",
      "color": "Crvena",
      "godiste": "2021.",
      "cena": "50.000",
      "url": "assets/images/bmw.png",
      "opis": "Moderan i dinamičan dizajn."
    },
  ];

  @override
  void initState() {
    super.initState();
    nova = items;
    // WidgetsBinding.instance?.addPostFrameCallback((_) async {
    //   await readJson();
    // });
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future addCar(name, color, model, godiste, cena, opis, imageFile) async {
    Map dodaj = {
      'name': name,
      'model': model,
      'color': color,
      'godiste': godiste,
      'cena': cena,
      'opis': opis,
      'url': imageFile
    };
    setState(() {
      nova.insert(0, dodaj);
    });
  }

  Future deleteCar(car) async {
    setState(() {
      nova.remove(car);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => AddCar(
                                addCar: addCar,
                              )));
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
                          "Dodaj novo vozilo",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Georgia",
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 30,
                  ),
                  for (int i = 0; i < nova.length; i++)
                    CarWidget(data: nova[i], deleteCar: deleteCar),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
