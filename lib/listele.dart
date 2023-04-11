import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Listele extends StatefulWidget {
  Listele({super.key, required this.ogrenciad});
  List<String> ogrenciad;

  @override
  State<Listele> createState() => _ListeleState();
}

class _ListeleState extends State<Listele> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Öğrenci Listesi'),
      ),
      body: ListView.builder(
        itemCount: widget.ogrenciad.length,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: ListTile(
              title: Text(widget.ogrenciad[index]),
              leading: const Icon(Icons.people),
              trailing: Icon(Icons.delete),
              onTap: (() {
                setState(() {
                  widget.ogrenciad.remove(widget.ogrenciad[index]);
                });
              }),
            ),
          );
        },
      ),
    );
  }
}
