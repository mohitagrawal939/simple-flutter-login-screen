import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isRemember = true;
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/background.jpg', fit: BoxFit.fill, height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width),
          Center(
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(30.0),
                child: Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/your_logo_here.png',height: 80.0),
                        const SizedBox(height: 30.0),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                right: 5,
                                left: 0,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 1,
                                  color: const Color(0xFFE6E6E6),
                                ),
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: null,
                                    child: Column(
                                      children: [
                                        const Text("Sign In",style: TextStyle(color: Colors.black)),
                                        Container(
                                          height: 1,
                                          width: 50,
                                          margin: const EdgeInsets.only(top: 8),
                                          color: Colors.blue,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(color: Colors.grey.withOpacity(0.1), spreadRadius: 3, blurRadius: 3, offset: const Offset(0, 1))
                            ],
                          ),
                          child: TextFormField(
                            controller: emailController,
                            maxLines: 1,
                            enableInteractiveSelection: false,
                            cursorColor: Colors.blue,
                            keyboardType: TextInputType.text,
                            initialValue: null,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (v) {
                              FocusScope.of(context).requestFocus();
                            },
                            decoration: const InputDecoration(
                              hintText: 'Enter your email',
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 15),
                              isDense: true,
                              counterText: '',
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                              hintStyle: TextStyle(color: Colors.black26),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(color: Colors.grey.withOpacity(0.1), spreadRadius: 3, blurRadius: 3, offset: const Offset(0, 1))
                            ],
                          ),
                          child: TextFormField(
                            controller: passwordController,
                            maxLines: 1,
                            cursorColor: Colors.blue,
                            obscureText: _obscureText,
                            enableInteractiveSelection: false,
                            keyboardType: TextInputType.text,
                            initialValue: null,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (v) {
                              FocusScope.of(context).requestFocus();
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your password',
                              suffixIcon: IconButton(icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off,color: Colors.blue), onPressed: _toggle),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 15),
                              isDense: true,
                              counterText: '',
                              focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                              hintStyle: const TextStyle(color: Colors.black26),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    checkColor: Colors.white,
                                    fillColor: MaterialStateProperty.resolveWith(getColor),
                                    value: isRemember,
                                    onChanged: (value) {
                                      setState(() {
                                        isRemember = value!;
                                      });
                                    }
                                ),
                                const Text("Remember Me", style: TextStyle(color: Colors.black)),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_) => const ForgotPasswordScreen()));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 15),
                                child: const Text("Forgot Password?",style: TextStyle(color: Colors.blue)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30.0),
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.only(top: 12,bottom:12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.blue,
                              boxShadow: [
                                BoxShadow(color: Colors.grey.withOpacity(0.2), spreadRadius: 1, blurRadius: 7, offset: const Offset(0, 1)),
                              ],
                            ),
                            child: const Text("Sign In",textAlign: TextAlign.center,style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color getColor(Set<MaterialState> states) {
    return Colors.blue;
  }

}