//ios é import do cupertino
import 'package:flutter/cupertino.dart';
import 'package:imc_app/blocs/imc_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = ImcBloc();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Cálculo de IMC'),
        ),
      child: ListView(
        children: [
          Padding(padding: EdgeInsets.all(20),
            child: CupertinoTextField(
              placeholder: 'Altura (CM)',
              controller: bloc.heightCtrl!,
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: CupertinoTextField(
              placeholder: 'Peso (KG)',
              controller: bloc.weightCtrl!,
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: Text(bloc.result, textAlign: TextAlign.center,),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: CupertinoButton.filled(
              onPressed: (){
                setState(() {
                  bloc.calculate();
                });
              },
              child: Text('Calcular'),
            ),
          ),
        ],
      ),
    );
  }
}
