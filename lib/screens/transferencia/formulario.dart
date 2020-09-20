import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


const _tituloAppBar = 'Criando Transferência';

class FormularioTransferencia extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }

}

class FormularioTransferenciaState extends State<FormularioTransferencia> {

  final TextEditingController _accountNumberContoller = TextEditingController();
  final TextEditingController _valueController = TextEditingController();

  void _criaTransferencia(BuildContext context){
    final int numeroConta = int.tryParse(_accountNumberContoller.text);
    final double valor = double.tryParse(_valueController.text);
    if(numeroConta != null && valor != null){
      final transferenciaCriada = Transferencia(valor, numeroConta);
      Navigator.pop(context, transferenciaCriada);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_tituloAppBar),),
      body : SingleChildScrollView(
        child: Column(
          children: [
            Editor(controller: _accountNumberContoller, rotulo: 'Número da conta', dica: '0000'),
            Editor(controller: _valueController, rotulo: 'Valor', dica: '0.00', icon: Icons.monetization_on,),
            RaisedButton(
              onPressed: () => _criaTransferencia(context),
              child: Text('CONFIRMAR'),
            )
          ],
        ),
      ),
    );
  }
}