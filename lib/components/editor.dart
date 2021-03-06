import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Editor extends StatelessWidget {

  final TextEditingController controller;
  final String rotulo;
  final String dica;
  final IconData icon;

  Editor({this.controller, this.rotulo, this.dica, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
      child: TextField(
        controller: controller,
        style: TextStyle(
            fontSize: 24.0
        ),
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}