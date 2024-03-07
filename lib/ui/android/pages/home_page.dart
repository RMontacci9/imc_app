//android é exclusivo material
import 'package:flutter/material.dart';
import 'package:imc_app/blocs/imc_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = new ImcBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cálculo de IMC'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Altura (cm)'),
              controller: bloc.heightCtrl!,
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Peso (kg)'),
              controller: bloc.weightCtrl!,
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                bloc.result,
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.all(20),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    bloc.calculate();
                  });
                },
                child: Text('Calcular', style: TextStyle(color: Colors.white),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
