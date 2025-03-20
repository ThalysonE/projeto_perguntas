import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final resposta;
  final void Function() onSelecao;
  const Resposta({super.key, required this.resposta, required this.onSelecao});


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 100),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
        )
      ),
      onPressed: onSelecao, 
      child: Text(resposta));
  }
}