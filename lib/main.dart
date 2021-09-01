import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        body: SingleChildScrollView(
          child: SafeArea(
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
                  'Bacharel em Direito & Desenvolvedora',
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
                ),
                Container(
                  child: IconButton(
                    icon: Icon(
                      Ionicons.logo_whatsapp,
                      size: 25.0,
                      color: Colors.pink,
                    ),
                    onPressed: () async {
                      const url = 'https://wa.me/${5511956543031}?text=Hello';
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    },
                  ),
                ),
                InkWell(
                  onTap: () {
                    launch('https://github.com/bleardini');
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0,
                    ),
                    child: ListTile(
                      leading: Icon(Ionicons.logo_github,
                          size: 25.0, color: Colors.pinkAccent),
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
                ),
                InkWell(
                  onTap: () {
                    launch('bruna.leardininet@gmail.com');
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0,
                    ),
                    child: ListTile(
                      leading:
                          Icon(Icons.mail, size: 25.0, color: Colors.pinkAccent),
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
                ),
                InkWell(
                  onTap: () {
                    launch(
                        'https://www.linkedin.com/in/bruna-leardini-4a66881b4/');
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0,
                    ),
                    child: ListTile(
                      leading: Icon(Ionicons.logo_linkedin,
                          size: 25.0, color: Colors.pinkAccent),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



// Container(
// launchWhatsApp() async {
//   final link = WhatsAppUnilink(
//     phoneNumber: '+55-(11)95654-3031',
//     text: "Olá",
//   );
//   await launch('https://web.whatsapp.com');
// ),
// };