import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import '/pages/Menu.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset('assets/images/Login_map.png'),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 25, right: 25, top: 46),
                        child: Column(
                          children: <Widget>[
                            Text(
                            'Colate P',
                            style: TextStyle(
                              fontSize: 60,
                              color: Color(0xff6096B4),
                              fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(60.0),
                                ),
                                filled: true,
                                hintText: 'Enter your e-mail',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 16),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(60.0),
                                ),
                                filled: true,
                                hintText: 'Enter your password',
                              ),
                            ),
                          ),
                          Text(
                            'Always easy with Colate P.',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              //fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ]
                        )
                        ),
                    Spacer(),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MenuPage()));
                          // Navigator.pushNamed(context, '/menu');
                          print('Get Started Now');
                        },
                        child: Container(
                          child: Center(
                              child: Text(
                            'Log in',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                          height: 62,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                            color: Color(0xff6096B4),
                            borderRadius: BorderRadius.circular(60),
                            gradient: RadialGradient(colors: [
                              Color(0xff98D7FA),
                              Color(0xff6096B4),
                              Color(0xff6096B4),
                              Color(0xff6096B4),
                            ], focal: Alignment(0, -4), radius: 6),
                          ),
                        )),
                    Padding(padding: EdgeInsets.all(20))
                  ],
                ),
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                )),
          )
        ]),
      ),
    );
  }
}
