import 'package:flutter/material.dart';
import 'package:modern_login/pages/components/button.dart';
import 'package:modern_login/pages/components/square_card.dart';
import 'package:modern_login/pages/components/textfield.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // logo
              logoWidget(),
              // welcome back, you've been missed!
              welcomeText(),
              const SizedBox(height: 25),
              userTextField(),
              const SizedBox(
                height: 10,
              ),
              passwordTextFiled(),
              // forgot password?
              forgotWidget(),
              SignInButton(),
              // or continue with
              continuWidget(),
              const SizedBox(height: 50),
              // google + apple sign in buttons
              socialWidget(),
              const SizedBox(height: 50),
              // not a member? register now
              notMemberWidget()
            ],
          ),
        ),
      ),
    );
  }

  Row notMemberWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Not a member?',
          style: TextStyle(color: Colors.grey[700]),
        ),
        const SizedBox(width: 4),
        const Text(
          'Register now',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Row socialWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        // google button
        SquareTile(imagePath: 'assets/google.png'),

        SizedBox(width: 25),

        // apple button
        SquareTile(imagePath: 'assets/apple.png')
      ],
    );
  }

  Padding continuWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              thickness: 0.5,
              color: Colors.grey[400],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Or continue with',
              style: TextStyle(color: Colors.grey[700]),
            ),
          ),
          Expanded(
            child: Divider(
              thickness: 0.5,
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }

  Padding SignInButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Button(onTap: () {}),
    );
  }

  textWidget passwordTextFiled() {
    return textWidget(
      controller: passwordController,
      obscureText: true,
      hintText: 'Password',
    );
  }

  textWidget userTextField() {
    return textWidget(
      controller: usernameController,
      obscureText: false,
      hintText: 'Username',
    );
  }

  Padding forgotWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Forgot Password?',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }

  Padding welcomeText() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Text(
        'Welcome back you\'ve been missed!',
        style: TextStyle(
          color: Colors.grey[700],
          fontSize: 16,
        ),
      ),
    );
  }

  Padding logoWidget() {
    return const Padding(
      padding: EdgeInsets.only(top: 50),
      child: Icon(
        Icons.person,
        size: 120,
      ),
    );
  }
}
