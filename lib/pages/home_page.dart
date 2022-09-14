import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
                  children: [
            //Imagen del Top
          
            const Image(image: AssetImage('assets/imagen.jpg')),
          
          
            Container(
                color: Colors.grey.shade300,
                //padding: const EdgeInsets.only(top: 30,bottom: 30),
                padding: const EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
          
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Lago para Acampar en Oeschinen', style: TextStyle(fontWeight: FontWeight.bold ),),
                      SizedBox(height: 8,),
                      Text('Heredia, Costa Rica'),
                    ],
                  ),
                  //const SizedBox(width: 30,),
                  Row(
                    
                      children: const [
                        Icon(Icons.star,color: Colors.red,),
                        SizedBox(width: 10,),
                        Text('41'),
                      ],
                    )
                  ],
              ),
            ),
          
          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                  _BotonAccion(icon: Icons.phone, text: 'CALL',), 
                  _BotonAccion(icon: Icons.location_pin, text: 'ROUTE',), 
                  _BotonAccion(icon: Icons.share, text: 'SHARE',)
                ],
            ),
          
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                color: Colors.grey.shade300,
                height: 2,
              ),
            ),
          
            //Contenido de Descripcion de la Tarjeta
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: const [
          
                   Text(
                    'Minim et aliquip sit incididunt officia fugiat velit aliqua eiusmod. Incididunt ad ex nulla tempor aute dolor veniam aliqua. Exercitation sunt Lorem duis incididunt. Ut amet eu cillum sint quis consequat sunt eu reprehenderit labore eiusmod occaecat. Minim et aliquip sit incididunt officia fugiat velit aliqua eiusmod. Incididunt ad ex nulla tempor aute dolor veniam aliqua. Exercitation sunt Lorem duis incididunt. Ut amet eu cillum sint quis consequat sunt eu reprehenderit labore eiusmod occaecat. ',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 15,),
                   Text(
                    'Minim et aliquip sit incididunt officia fugiat velit aliqua eiusmod. Incididunt ad ex nulla tempor aute dolor veniam aliqua. Exercitation sunt Lorem duis incididunt. Ut amet eu cillum sint quis consequat sunt eu reprehenderit labore eiusmod occaecat. Minim et aliquip sit incididunt officia fugiat velit aliqua eiusmod. Incididunt ad ex nulla tempor aute dolor veniam aliqua. Exercitation sunt Lorem duis incididunt. Ut amet eu cillum sint quis consequat sunt eu reprehenderit labore eiusmod occaecat. ',
                    style: TextStyle(fontSize: 16),
                  ),
          
                ],
              )
            )
                  ],
                ),
          )),
    );
  }
}

class _BotonAccion extends StatelessWidget {
  
  
  final IconData icon;
  final String text;

  const _BotonAccion({
    
    Key? key, 
    required this.icon, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(15),
      child: Column(
        children:[
          Icon(
            icon,
            size: 40,
            color: Colors.blueAccent,
          ),
          const SizedBox(height: 8,),
          Text(
            text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueAccent),
          )
        ],
      ),
    );
  }


}
