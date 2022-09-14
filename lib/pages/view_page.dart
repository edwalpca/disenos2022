import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {

  const ViewPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      //bottom: false,
//      top: false,
      child: SafeArea(
        child: Scaffold(
      
          body: PageView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: const  [
              Page1(),
              Page2(),
            ],
          )
          
          ),
      ),
    );
  }
}




class Page1 extends StatelessWidget {
  const Page1({super.key});
  @override
  Widget build(BuildContext context) {
        return Stack(
          //alignment: AlignmentDirectional.topStart,
          children: const [
            //Background
            BackGroundPage1(),
            //Contenido principal de mi ViewPage
            ContentPage1(),
          ],
        );
  }
}


class ContentPage1 extends StatelessWidget {
  const ContentPage1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        const SizedBox(height: 60,),
        Container(
          color: Colors.transparent,
          width: size.width,
          height: 80,
          child: const  Center(
              child: Text('11°',
                 style: TextStyle(
                fontSize: 38,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          )),
        ),
        Container(
          color: Colors.transparent.withAlpha(0),
          width: size.width,
          height: 80,
          child: const  Center(
              child: Text(
            'Jueves',
            style: TextStyle(
                fontSize: 38,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          )),
        ),
      
        Expanded(child: Container()),    
        const Center(child: Icon(Icons.keyboard_arrow_down,size: 120, color: Colors.white,))

      ],
    );
  }
}


class BackGroundPage1 extends StatelessWidget {
  
  const BackGroundPage1({super.key});
 
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: double.infinity,
      color: const Color(0xFF52c3dd),
      alignment: Alignment.topCenter,
      //Image de fondo
      child: const Image(image: AssetImage('assets/scroll-1.png')),
    );
  }
}


// Page 2 al hacer Scroll.
//
//
//
class Page2 extends StatelessWidget {
   const Page2({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: (){}, 
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            shape: const StadiumBorder()
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text('Bienvenido', style: TextStyle( color: Colors.white, fontSize: 30 )),
          ),
        ),
      ),
    );
  }
}
