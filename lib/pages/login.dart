import 'package:flutter/material.dart';
import 'package:movil_1/pages/register.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(padding: const EdgeInsets.only(left: 50, right: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Welcome, Sign In',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: SizedBox(
                width: 150,
                height: 150,
                child: Image(
                  image: AssetImage('assets/images/avatar1.png'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: InkWell(
                child: const Text(
                  "Don't you have an account? Sign Up",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 17,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Register()),
                  );
                },
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: (){},
              child: const Text('Login', style: TextStyle(fontSize: 20),),
              
            ),
          ],
        ),
      ),
      )
    );
  }
}