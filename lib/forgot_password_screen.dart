import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFf5f8fd),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),
            onPressed: () {
              Navigator.pop(context);
            },
          )
      ),
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
                        const SizedBox(height: 40.0),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                right: 0,
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
                                        const Text("Forgot Password",style: TextStyle(color: Colors.black)),
                                        Container(
                                          height: 1,
                                          width: 110,
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
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: const Text("Enter your email address you are using for your account below and we will send you a password reset link.",style: TextStyle(fontSize: 10,color: Colors.black45)),
                        ),
                        const SizedBox(height: 30.0),
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
                            cursorColor: Colors.blue,
                            keyboardType: TextInputType.text,
                            enableInteractiveSelection: false,
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
                        const SizedBox(height: 40.0),
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
                            child: const Text("Submit",textAlign: TextAlign.center,style: TextStyle(color: Colors.white)),
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
}