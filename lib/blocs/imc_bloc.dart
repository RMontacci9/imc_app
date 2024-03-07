import 'package:flutter_masked_text/flutter_masked_text.dart';

// aqui, separado da UI do app, temos o controle das nossas regras de negócio. Assim, podemos compartilhar entre as diversas ui criadas no app.
class ImcBloc {
  var heightCtrl = MaskedTextController(mask: '000'); //controller com mascara para altura
  var weightCtrl = MaskedTextController(mask: '000'); //controller com mascara para peso
  var result = 'Preencha os dados para calcular seu IMC.';

  calculate(){
    double weight = double.parse(weightCtrl.text); //transforma o valor do nosso controller de peso em double pra calcular
    double height = double.parse(heightCtrl.text) / 100; //transforma o valor do nosso controller de altura em double pra calcular
    double imc = weight / (height * height); // efetua o cálculo

    if(imc < 18.6){
      result = 'Abaixo do peso (${imc.toStringAsPrecision(2)}';
    } else if (imc >= 18.6 && imc <= 24.9){
      result = 'Peso ideal (${imc.toStringAsPrecision(2)}';
    } else if (imc >= 24.9 && imc <= 29.9){
      result = 'Levemente acima do peso (${imc.toStringAsPrecision(2)}';
    } else if (imc >= 24.9 && imc <= 34.9){
      result = 'Obesidade grau I (${imc.toStringAsPrecision(2)}';
    } else if (imc >= 34.9 && imc <= 39.9){
      result = 'Obesidade grau II (${imc.toStringAsPrecision(2)}';
    } else if (imc >= 40 ){
      result = 'Obesidade grau III (${imc.toStringAsPrecision(2)}';
    }

  }



}