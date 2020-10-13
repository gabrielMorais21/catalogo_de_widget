import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: ContainerWidget(),
      ),
    );
  }
}

// basicamente é a div no mundo do flutter
// totalmente maleavel
class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // largura
        width: 300.0,
        // altura
        height: 300.0,
        // cor
        color: Colors.yellow,
        // alinhamento do filho
        alignment: Alignment.center,
        // filho
        child: ColumWidget(),
      ),
    );
  }
}

// texto
class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // texto
    return Text(
      "LOREM LOREM ",
      // aplicar estilo no texto
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18.0),
    );
  }
}

// icones
class IconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // icon
    return Icon(
      Icons.airport_shuttle,
      color: Colors.red,
    );
  }
}

// colunas
class ColumWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // recebe um array de child
    // é necessario que o column seja colocado como filho de um container
    // ao colocalo como filho de um container ele ira herda altura e largura 
    return Column(
      // alinha a coluna e não os Widget que estão dentro 
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      // alinha os Widget e não as colunas 
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.red,
          // para fazer o container ocupar toda largura use isso
          width: double.infinity,
          height: 50.0,
        ),
        Container(
          color: Colors.blue,
          width: 50.0,
          height: 50.0,
        ),
        ButtonIcon(),
        ButtonText()
      ],
    );
  }
}

class ButtonIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 50,
      color: Colors.green,
      child: IconWidget(),
    );
  }
}

class ButtonText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 150.0,
        height: 50.0,
        color: Colors.purple,
        child: TextWidget());
  }
}
