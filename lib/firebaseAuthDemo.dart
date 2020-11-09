import 'package:auth_camara/regster.dart';
import 'package:auth_camara/signIn.dart';
import 'package:flutter/material.dart';

class FirebaseAuthDemo extends StatefulWidget {
  @override
  _FirebaseAuthDemoState createState() => _FirebaseAuthDemoState();
}

class _FirebaseAuthDemoState extends State<FirebaseAuthDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Auth"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text('INICIAR SESIÓN',
                    style: TextStyle(color: Colors.black, fontSize: 20)),
                IconButton(
                  alignment: Alignment.center,
                  icon: Icon(Icons.login),
                  iconSize: 50,
                  color: Colors.black,
                  onPressed: () => _pushPage(context, SignIn()),
                )
              ],
            ),
          ),
          /*Container(
            child: OutlineButton(
              child: Text("Signin"),
              onPressed: () => _pushPage(context, SignIn()),
            ),
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
          ),*/

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text('REGISTRARSE',
                    style: TextStyle(color: Colors.black, fontSize: 20)),
                IconButton(
                  icon: Icon(Icons.person),
                  iconSize: 50,
                  color: Colors.black,
                  onPressed: () => _pushPage(context, Register()),
                )
              ],
            ),
          ),

          /*Container(
            child: OutlineButton(
              child: Text("Register"),
              onPressed: () => _pushPage(context, Register()),
            ),
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
          ),*/
        ],
      ),
    );
  }

  void _pushPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => page),
    );
  }
}
