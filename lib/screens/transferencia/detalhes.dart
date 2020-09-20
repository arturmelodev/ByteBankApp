
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _titleScreen = 'Detalhes da transferência';

class DetalhesTransferencia extends StatelessWidget {

  final Transferencia transferencia;

  const DetalhesTransferencia({Key key, @required this.transferencia}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleScreen),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Conta: '+ transferencia.numeroConta.toString()),
            Text('Valor: '+ transferencia.valor.toString()),
          ],
        ),
      ),
    );
  }

}