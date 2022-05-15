
import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/pages/Home/acompanhamentos.page.dart';
import 'package:primeiro_app_flutter/pages/Home/hamburguerCasa.page.dart';
import 'package:primeiro_app_flutter/pages/Home/bebidas.page.dart';
import 'package:primeiro_app_flutter/pages/Home/monte.page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:ListView(
        padding: EdgeInsets.all(20),
        children: <Widget> [
          //hamburger da casa
          Container(
            padding: EdgeInsets.only(
              top: 12,
              left: 20,
              right: 20,
            ),
            //color: Colors.amber,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image:  DecorationImage(
                image: NetworkImage("https://c.pxhere.com/photos/13/fa/beef_bread_bun_burger_cheese_cheeseburger_close_up_delicious-1556149.jpg!d"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.24),
                  BlendMode.darken,
                )
              ),

            ),
            //descrição
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hamburger da casa",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Lista de hamburger disponíveis",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                //Botão para ...
                Row(
                  children: [
                    SizedBox(
                      width: 240,
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      child: TextButton(
                        onPressed: (){
                          Navigator.of(context).push<int>(
                              MaterialPageRoute(
                                  builder: (_)=> HamburgerCasa(),
                              ),
                          );
                        },
                        child: Icon( Icons.arrow_forward_ios),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
            const SizedBox(
              height: 20,
            ),
            //Acompanhamentos
          Container(
              padding: EdgeInsets.only(
                top: 12,
                left: 20,
                right: 20,
              ),
              //color: Colors.amber,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
                image:  DecorationImage(
                    image: NetworkImage("https://media.istockphoto.com/photos/chips-fries-closeup-fast-food-top-view-picture-id1225659636?k=20&m=1225659636&s=612x612&w=0&h=-PdENRkRjWWgtSt6SmzQFNAOByhAIYSOBNV65zw0wwk="),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.24),
                      BlendMode.darken,
                    )
                ),

              ),
              //descrição
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Acompanhamentos",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Lista de Acompanhamentos disponíveis",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 240,
                      ),
                      Container(
                        height: 40,
                        width: 60,
                        child: TextButton(
                          onPressed: (){
                            Navigator.of(context).push<int>(
                              MaterialPageRoute(
                                builder: (_)=> AcompanhamentosPage(),
                              ),
                            );
                          },
                          child: Icon( Icons.arrow_forward_ios),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //bebidas
          Container(
              padding: EdgeInsets.only(
                top: 12,
                left: 20,
                right: 20,
              ),
              //color: Colors.amber,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
                image:  DecorationImage(
                    image: NetworkImage("https://media.istockphoto.com/photos/alcoholic-drinks-picture-id816174634?k=20&m=816174634&s=612x612&w=0&h=KTanppG1bSlOoNe6U8ffi4xhekJebe02kiBKK_FzXQ4="),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.24),
                      BlendMode.darken,
                    )
                ),

              ),
              //descrição
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Bebidas",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Lista de bebidas disponíveis",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 240,
                      ),
                      Container(
                        height: 40,
                        width: 60,
                        child: TextButton(
                          onPressed: (){
                            Navigator.of(context).push<int>(
                              MaterialPageRoute(
                                builder: (_)=> BebidasPage(),
                              ),
                            );
                          },
                          child: Icon( Icons.arrow_forward_ios),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //Monte o seu hamburger
          Container(
              padding: EdgeInsets.only(
                top: 12,
                left: 20,
                right: 20,
              ),
              //color: Colors.amber,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
                image:  DecorationImage(
                    image: NetworkImage("https://media.istockphoto.com/photos/hamburger-with-flying-ingredients-picture-id1203988866?k=20&m=1203988866&s=612x612&w=0&h=rrzpq_dyQbiWMOBjjJAB-rABdDqf8Wts2hb14Vusb5A="),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.24),
                      BlendMode.darken,
                    )
                ),

              ),
              //descrição
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Monte seu hamburger",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Crie um hamburger de acordo com suas preferências",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 240,
                      ),
                      Container(
                        height: 40,
                        width: 60,
                        child: TextButton(
                          onPressed: (){
                            Navigator.of(context).push<int>(
                              MaterialPageRoute(
                                builder: (_)=> MontePage(),
                              ),
                            );
                          },
                          child: Icon( Icons.arrow_forward_ios),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

            ),


        ],
      ),
    );

  }
}