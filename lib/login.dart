import 'package:flutter/material.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/cosmic_1.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Logo(),
            Expanded(
              child: Login2(),
            ),
          ],
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      filterQuality: FilterQuality.high,
      width: double.infinity,
      height: 170,
      image: AssetImage("assets/images/logo_2.png"),
    );
  }
}

class Login2 extends StatelessWidget {
  const Login2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background_black.png"),
            fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              MyForm(),
              SizedBox(
                height: 15,
              ),
              Liner(),
              SizedBox(
                height: 15,
              ),
              IconsButton1(),
              SizedBox(
                height: 15,
              ),
              FooterAbc(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Sign In",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "NielArm30@gmail.com",
              hintStyle: const TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFF29303c),
                  width: 2.5,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 2.5,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email';
              }
              if (value.contains('@')) {
                return 'Please enter a valid email address';
              }
              return null;
            },
            onSaved: (value) {
              _email = value!;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Password",
              hintStyle: const TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFF29303c),
                  width: 2.5,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 2.5,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            obscureText: true,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter a password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters long';
              }
              return null;
            },
            onSaved: (value) {
              _password = value!;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          TextButton(
            onPressed: () {},
            style: const ButtonStyle(alignment: Alignment.centerLeft),
            child: const Text(
              "Forgot Password?",
              style: TextStyle(color: Color(0xFF12DCE8)),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            height: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xFFac5ad2),
                  Color(0xFF22a8c6),
                ],
              ),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent),
              child: const Text('Submit'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // ignore: avoid_print
                  print('Email: $_email');
                  // ignore: avoid_print
                  print('Password: $_password');
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Liner extends StatelessWidget {
  const Liner({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: Divider(
            color: Color(0xFF6d717e),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "or Sign in Using",
            style: TextStyle(
              color: Color(0xFF6d717e),
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: Color(0xFF6d717e),
          ),
        )
      ],
    );
  }
}

class IconsButton1 extends StatelessWidget {
  const IconsButton1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          color: const Color(0xFF03a9f4),
          onPressed: () {},
          icon: const Icon(Brandico.twitter_bird),
        ),
        IconButton(
          color: const Color(0xFF4267b2),
          onPressed: () {},
          icon: const Icon(Brandico.facebook_rect),
        ),
        IconButton(
          color: const Color(0xFFff3d00),
          onPressed: () {},
          icon: const Icon(FontAwesome.google),
        ),
      ],
    );
  }
}

class FooterAbc extends StatelessWidget {
  const FooterAbc({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        const Text(
          'Don\'t have an account?',
          style: TextStyle(color: Color(0xFF6d717e)),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Sign Up",
            style: TextStyle(
              color: Color(0xFF12DCE8),
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
