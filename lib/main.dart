import 'package:flutter/material.dart';
import 'package:pokemon_app/home.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PokeballImage(),
                    UsernameTextField(),
                    PasswordTextField(),
                    LoginButton(),
                  ],
                ),
            ),
              FooterText(),
            ],
          )
        )
      ),
    );
  }
}

class PokeballImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network("https://i.pinimg.com/originals/50/e1/db/50e1db4684e6f697f93590950eb832f6.png",
      width: 60.0,
      height: 60.0,
    );
  }
}

class UsernameTextField extends StatelessWidget {

  static TextEditingController _usernameController  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: TextField(
        controller: _usernameController,
        decoration: InputDecoration(
          hintText: 'Username',

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red
            )
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red
            )
          ),

        ),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {

  static TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
      child: TextField(
        controller: _passwordController,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red
            )
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red
            )
          ),

        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.red,
        onPressed: () {
          String username = UsernameTextField._usernameController.text;
          String password = PasswordTextField._passwordController.text;

          if(username == 'admin' && password == 'admin') {
            // navigate to homepage
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => HomePage())
            );
          }
        },
        child: Text('Login', style: TextStyle(color: Colors.white),),
      ),
    );
  }
}

class FooterText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Text("Made by Severian", style: TextStyle(color: Colors.grey),),
    );
  }

}