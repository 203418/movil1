import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movil_1/pages/login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left:  50, right: 50, top: 80),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'Welcome, you can Sign Up',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Lobster',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
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
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Name',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Last_name',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Username'
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email'
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm your password'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: InkWell(
                  child: const Text(
                    "Do you have an account? Sign In",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 17,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(
                      context, 
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                ),
              ),
               ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.all(12),
              ),
              onPressed: (){},
              child: const Text('Register me!', style: TextStyle(fontSize: 20),),
              
            ),
            ],
          ),
        ),
      ),
    );
  }
}