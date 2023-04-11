import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/ekle.dart';
import 'package:flutter_application_1/listele.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> ogrenciler = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 250,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ekle(ogrenciler: ogrenciler),
                        ));
                  },
                  child: Text("Öğrenci ekle")),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 250,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Listele(ogrenciad: ogrenciler),
                        ));
                  },
                  child: Text("Öğrenci Listesi")),
            ),
          ],
        ),
      ),
    );
  }
}
