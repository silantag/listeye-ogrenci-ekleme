import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Ekle extends StatelessWidget {
  Ekle({super.key, required this.ogrenciler});
  final TextEditingController ogrenciad = TextEditingController();
  List<String> ogrenciler;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                height: 50,
                child: TextField(
                  controller: ogrenciad,
                  decoration: InputDecoration(
                      label: Text("AD SOYAD"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  ogrenciler.add(ogrenciad.text);
                  print(ogrenciler);
                },
                child: Text("Öğrenci Ekle"))
          ],
        ),
      ),
    );
  }
}
