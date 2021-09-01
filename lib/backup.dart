import 'package:flutter/material.dart';



void main() {
  runApp(
    MeuApp(),
  );
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('imagens/bruna2.jpg'),
                radius: 50.0,
              ),
              Text(
                'Bruna Leardini',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'GreatVibes',
                ),
              ),
              Text(
                'Bacharel em Direto & Desenvolvedora',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.deepOrange.shade100,
                  fontSize: 20.0,
                  letterSpacing: 3.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 250.0,
                // child: Divider(
                //   color: Colors.deepOrange.shade100,
                // ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.gif_outlined,
                    size: 25.0,
                    color: Colors.pinkAccent
                  ),
                  title: Text(
                    'github.com/bleardini',
                    style: TextStyle(
                      color: Colors.pink,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                      
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    size: 25.0,
                    color: Colors.pinkAccent
                  ),
                  title: Text(
                    'bruna.leardininet@gmail.com',
                    style: TextStyle(
                      color: Colors.pink,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.maps_ugc,
                    size: 25.0,
                    color: Colors.pinkAccent
                  ),
                  title: Text(
                    'Linkedin: Bruna Leardini',
                    style: TextStyle(
                      color: Colors.pink,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
