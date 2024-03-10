import 'package:flutter/material.dart';

class MyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Datos importantes",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Ver todos",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(left: 24),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonBar(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: TextButton(
                            style: ButtonStyle(
                                minimumSize:
                                    MaterialStateProperty.all(Size(136, 54)),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.black)),
                            child: const Text(
                              'Button 1',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {}),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: TextButton(
                            style: ButtonStyle(
                                minimumSize:
                                    MaterialStateProperty.all(Size(136, 54)),
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(8, 212, 212, 212))),
                            child: const Text(
                              'Button 2',
                              style: TextStyle(color: Colors.grey),
                            ),
                            onPressed: () {}),
                      ),
                      TextButton(
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(Size(136, 54)),
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(8, 212, 212, 212))),
                          child: const Text(
                            'Button 3',
                            style: TextStyle(color: Colors.grey),
                          ),
                          onPressed: () {}),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
              child: Text(
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                  "This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus, and lush valleys. The Andes are also home to idk lol"),
            )
          ],
        ));
  }
}
