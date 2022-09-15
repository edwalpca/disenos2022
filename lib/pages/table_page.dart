import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math' as math;

class TablePage extends StatelessWidget {
  const TablePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFF353568),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              //Recuadro Rosado de Fondo
              const BackGroundBox(),

              //Descripcion Pantalla
              const DescriptionWidget(),

              //Table Opciones
              Container(
                  padding: const EdgeInsets.only(top: 120),
                  child: const TableWidgetMenu()),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigatorBar(),
      ),
    );
  }
}

class CustomBottomNavigatorBar extends StatelessWidget {
  const CustomBottomNavigatorBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,      
      items: const [
        BottomNavigationBarItem(
          icon: Icon( Icons.calendar_today_outlined ),
          label: 'Calendario'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.pie_chart_outline_outlined ),
          label: 'Gráfica'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.supervised_user_circle_outlined ),
          label: 'Usuarios'
        ),
      ],
    );
  }
}

//Widget de Descripcion del top o Header
class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 130,
      //color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 8),
            Text(
              'Opciones Principales',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.white),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Ea mollit non qui ipsum nisi aute consectetur.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class TableWidgetMenu extends StatelessWidget {
  const TableWidgetMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          BoxOpcionMenu(
            texto: 'General',
            color: Colors.lightBlueAccent,
            icon: Icons.access_alarms_rounded,
          ),
          BoxOpcionMenu(
            texto: 'Buy',
            color: Colors.purpleAccent,
            icon: Icons.shopping_bag,
          ),
        ]),
        //Row2
        TableRow(children: [
          BoxOpcionMenu(
            texto: 'Bus',
            color: Colors.red,
            icon: Icons.bus_alert,
          ),
          BoxOpcionMenu(
            texto: 'Buy',
            color: Colors.orangeAccent,
            icon: Icons.file_copy_rounded,
          ),
        ]),
        //Row3
        TableRow(children: [
          BoxOpcionMenu(
            texto: 'Video',
            color: Colors.blueAccent,
            icon: Icons.video_camera_back_outlined,
          ),
          BoxOpcionMenu(
            texto: 'Grocery',
            color: Colors.greenAccent,
            icon: Icons.local_grocery_store_outlined,
          ),
        ]),
      ],
    );
  }
}

//Opciones del Menu de la pantalla.

class BoxOpcionMenu extends StatelessWidget {
  final String texto;
  final Color color;
  final IconData icon;

  const BoxOpcionMenu({
    Key? key,
    required this.texto,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 200,
      height: 175,
      decoration: BoxDecoration(
        //color: Colors.amber,
        color: Colors.blueGrey.withOpacity(.5),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                //color:Colors.amber,
                //color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Icon(
                    icon,
                    size: 40,
                    color: Colors.white,
                  )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  texto,
                  style: const TextStyle(fontSize: 25, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//
//Cuadro BackGround de Fondo Ubicado en la parte superior de la pantalla.
//Color Pink, primera componente del Stack
class BackGroundBox extends StatelessWidget {
  const BackGroundBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -180,
      left: -80,
      child: Transform.rotate(
        angle: 15 * math.pi / 80,
        child: Container(
          width: 400,
          height: 400,
          decoration: const BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.all(Radius.circular(80)),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                //posiciona la degradacion de los colores
                stops: [
                  0.2,
                  0.8
                ],
                colors: [
                  Color.fromARGB(255, 253, 196, 202),
                  Color(0XFFfe4bc4)
                ]),
          ),
        ),
      ),
    );
  }
}
