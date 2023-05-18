import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  var _isLogin = true;
  var _enterdEmail = '';
  var _enterdPassword = '';

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }

  bool buttonVisibility() {
    if (_formKey.currentState!.validate()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Theme.of(context).colorScheme.primary,
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 82, 82, 82).withOpacity(0.5),
                  const Color.fromARGB(221, 21, 21, 21).withOpacity(0.9),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: const [0, 1],
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        top: 30, bottom: 20, left: 20, right: 20),
                    width: 200,
                    child: Image.asset(
                        '/Users/apple/Desktop/Karthik/flutter_chat_app/assets/images/158651-chat-icon-png-file-hd.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Card(
                                shadowColor: Colors.transparent,
                                surfaceTintColor: Colors.transparent,
                                color: Colors.transparent,
                                borderOnForeground: false,
                                elevation: 4,
                                child: GlassmorphicContainer(
                                  padding: const EdgeInsets.all(0.5),
                                  margin: const EdgeInsets.all(0.5),
                                  width: double.infinity,
                                  height: 60,
                                  borderRadius: 30,
                                  blur: 15,
                                  alignment: Alignment.center,
                                  border: 2,
                                  linearGradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 252, 178, 121)
                                            .withOpacity(0.2),
                                        const Color.fromARGB(157, 227, 174, 113)
                                            .withOpacity(0.2),
                                        const Color.fromARGB(95, 188, 153, 124)
                                            .withOpacity(0.2)
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight),
                                  borderGradient: LinearGradient(colors: [
                                    const Color.fromARGB(162, 255, 255, 255)
                                        .withOpacity(0.2),
                                    Colors.white70.withOpacity(0.2)
                                  ]),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: TextFormField(
                                        initialValue: _enterdEmail,
                                        validator: (value) {
                                          if (value!.isEmpty ||
                                              !value.contains('@') ||
                                              (!value.endsWith('.com') &&
                                                  !value.endsWith('.in'))) {
                                            return 'Invalid email!';
                                          }
                                          return null;
                                        },
                                        onSaved: (newValue) {
                                          _enterdEmail = newValue!;
                                        },
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Email',
                                          hintStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 205, 205, 205)),
                                        ),
                                        cursorColor: const Color.fromARGB(
                                            255, 218, 201, 174),
                                        cursorHeight: 20,
                                        cursorWidth: 2.5,
                                        cursorRadius: const Radius.circular(10),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        autocorrect: false,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Card(
                                shadowColor: Colors.transparent,
                                surfaceTintColor: Colors.transparent,
                                color: Colors.transparent,
                                borderOnForeground: false,
                                elevation: 4,
                                child: GlassmorphicContainer(
                                  width: double.infinity,
                                  height: 60,
                                  borderRadius: 30,
                                  blur: 15,
                                  alignment: Alignment.center,
                                  border: 2,
                                  linearGradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 252, 178, 121)
                                            .withOpacity(0.2),
                                        const Color.fromARGB(157, 227, 174, 113)
                                            .withOpacity(0.2),
                                        const Color.fromARGB(95, 188, 153, 124)
                                            .withOpacity(0.2)
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight),
                                  borderGradient: LinearGradient(colors: [
                                    const Color.fromARGB(162, 255, 255, 255)
                                        .withOpacity(0.2),
                                    Colors.white70.withOpacity(0.2)
                                  ]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: TextFormField(
                                      initialValue: _enterdPassword,
                                      validator: (value) {
                                        if (value!.isEmpty ||
                                            !value.contains(RegExp(
                                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$'))) {
                                          return 'Need min 8 char, and must include  0-9, A-Z and a-z, special symbol';
                                        }
                                        return null;
                                      },
                                      onSaved: (newValue) {
                                        _enterdPassword = newValue!;
                                      },
                                      cursorColor: const Color.fromARGB(
                                          255, 218, 201, 174),
                                      cursorHeight: 20,
                                      cursorWidth: 2.5,
                                      cursorRadius: const Radius.circular(10),
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Password',
                                        hintStyle: TextStyle(
                                            color: Color.fromARGB(
                                                255, 205, 205, 205)),
                                      ),
                                      obscureText: true,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            InkWell(
                              onTap: _submit,
                              child: GlassmorphicContainer(
                                  width: 70,
                                  height: 40,
                                  borderRadius: 20,
                                  border: 1,
                                  blur: 15,
                                  linearGradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 244, 121, 27)
                                            .withOpacity(0.6),
                                        const Color.fromARGB(122, 247, 142, 57)
                                            .withOpacity(0.6)
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight),
                                  borderGradient: LinearGradient(colors: [
                                    const Color.fromARGB(162, 249, 235, 235)
                                        .withOpacity(0.5),
                                    const Color.fromARGB(179, 234, 218, 218)
                                        .withOpacity(0.5)
                                  ]),
                                  child: Center(
                                      child: Text(
                                    _isLogin ? 'Login' : 'SignUp',
                                    style: const TextStyle(color: Colors.white),
                                  ))),
                            ),
                            const SizedBox(height: 6),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isLogin = !_isLogin;
                                  });
                                },
                                child: Text(
                                  _isLogin
                                      ? 'Create an Account'
                                      : 'Already had account?',
                                  style: const TextStyle(shadows: [
                                    Shadow(
                                        color: Color.fromARGB(255, 59, 58, 58))
                                  ], color: Color.fromARGB(255, 254, 179, 88)),
                                ))
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
