import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});
  //TODO 1 : Variabel

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';
  bool _isSignedIn = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: 2. Pasang AppBar
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      //TODO: 3. Pasang body
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              child: Column(
                //TODO: 4. Atur mainAxisAlignment 
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //TODO: 5. namapngguna
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: "Nama Pengguna",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  //TODO: 6. password
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: "Kata Sandi",
                      errorText: _errorText.isNotEmpty? _errorText: null,
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(_obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility))),
                            obscureText: _obscurePassword,
                  ),
                  //TODO: 7. button
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: (){},
                      child: Text('Signed In')
                  ),
                  //TODO: 8. TextButton Sign Up
                  SizedBox(height: 10),
                  RichText(text: TextSpan(
                    text: 'Belum punya akun?',
                    style: TextStyle(fontSize: 16, color: Colors.deepPurple),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Daftar disini',
                        style: TextStyle(
                          color: Colors.pink,
                          decoration: TextDecoration.underline,
                          fontSize: 16
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {},
                      )
                    ]
                  ))
                ],
            )),
          ),
        ),
      ),
    );
  }
}
