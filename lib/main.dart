import 'package:flutter/material.dart';

void main() => runApp(JohanApp());

class JohanApp extends StatefulWidget {
  @override
  _JohanAppState createState() => _JohanAppState();
}

class _JohanAppState extends State<JohanApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(brightness: Brightness.dark), debugShowCheckedModeBanner: false, home: Principal());
  }
}

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
} // Fin clase Principal

class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  } //Fin void InitState

  Widget card(String text) {
    return Card(
      color: Colors.blue[200],
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(child: Text(text)),
      ),
    );
  } //Fin de widget card

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  } //Fin de Tab enviando texto con icono

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hagalo"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("Tarjeta 1 Inicio"),
          card("Tarjeta 2 Comienza a buscar tus productos"),
          card("Tarjeta 3 No tienes articulos en tu Carrito"),
          card("Tarjeta 4 Ajustes"),
          card("Tarjeta 5 Cuenta"),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: <Widget>[
          tab("Inicio", Icon(Icons.account_balance_sharp)),
          tab("Buscar", Icon(Icons.search)),
          tab("Carrito", Icon(Icons.add_shopping_cart_rounded)),
          tab("Ajustes", Icon(Icons.settings)),
          tab("Cuenta", Icon(Icons.account_circle_outlined)),
        ],
      ),
    ); //Fin de Scaffold
  } //Fin de widget
} //Fin class _PrincipalState
