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
        width: double.infinity,
        // altura
        height: double.infinity,
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
        ContainerTransformWidget(),
        ButtonIcon(),
        ButtonText(),
        ButtonTextPadding(),
        BorderRadiusWidget(),
        BorderShadowWidget()

      ],
    );
  }
}

// button feito com container e icone
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

// button feito com container e text
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

// button feito com container, texto e padding para espaçamento externo (semelhante ao margin do css)
class ButtonTextPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        width: 150.0,
        height: 50.0,
        color: Colors.purple,
        child: TextWidget()),
    );
  }
}

// sizedBox
// Sizedbox é focado em ter um tamanho especifico 
class SizedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sizedbox é focado em ter um tamanho especifico 
    return SizedBox(height: 20, width: double.infinity,);
  }
}


// fazendo transformações no container, como animações 
class ContainerTransformWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
      child: Container(
        // transform serve para fazer animações
        transform: Matrix4.identity()..scale(0.9)..translate(50.0, 0.0),
        width: double.infinity,
        height: 50,
        color: Colors.green[100],
        alignment: Alignment.center,
        child: Text("ContainerTransformWidget", style: TextStyle(color: Colors.white, fontSize: 18),)
      ),
      );
  }
}

// BorderRadius and Decoration 
class BorderRadiusWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[300],
          borderRadius: BorderRadius.circular(30.0)
          
          ),
        width: double.infinity,
        height: 50,
        // color: Colors.green[100],
        alignment: Alignment.center,
        child: Text("ContainerTransformWidget", style: TextStyle(color: Colors.white, fontSize: 18),)
      ),
      );
  }
}

// BoxShadow and Decoration 
class BorderShadowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[300],
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: <BoxShadow>[
             BoxShadow(
               color: Colors.black.withOpacity(0.5),
               offset: Offset(3.0, 5.0),
               blurRadius: 10.0
               ),
          ]
          ),
        width: double.infinity,
        height: 50,
        // color: Colors.green[100],
        alignment: Alignment.center,
        child: Text("ContainerTransformWidget", style: TextStyle(color: Colors.white, fontSize: 18),)
      ),
      );
  }
}


