import 'package:flutter/material.dart';
import 'package:fun_chat/components/my_button.dart';
import 'package:fun_chat/components/my_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SizedBox(height: 50,),
                Icon(Icons.message,
                size: 80,
                color: Colors.grey[600],
                ),
                SizedBox(height: 50,),

               const Text("Welcome back you\'ve been missed!", style: TextStyle(fontSize: 16),
               ),
                SizedBox(height: 50,),
                MyTextField(controller: emailController,
                    hintText: 'Email',
                    obscureText: false),
                SizedBox(height: 25,),

                MyTextField(controller: passwordController,
                    hintText: 'Password',
                    obscureText: true),

                SizedBox(height: 20,),

                MyButton(onTap: (){}, text: "Sign In")

              ],
            ),
          ),
        ),
      ),
    );
  }
}
