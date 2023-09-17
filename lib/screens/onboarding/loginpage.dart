import 'package:erp/model.dart/mymodel.dart';
import 'package:erp/provider/erp_provider.dart';
import 'package:erp/screens/homescreen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../constant/constant.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _passwordVisible = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  MyModel? myModel;

  Future<void> getLogin(String email, String password) async {
    showLoader(context);
    myModel = await Provider.of<ErpProvider>(context, listen: false)
        .getLogindetails(email, password);
    Navigator.pop(context);
    setState(() {});
  }

  @override
  void dispose() {
    emailController.clear();
    passwordController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLargeScreen(context)
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  color: Color(0xffa4c4b5),
                  child: Column(
                    children: [
                      Lottie.asset(
                        height: MediaQuery.of(context).size.height,
                        'assets/images/login.json',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: buildContent(),
                ),
              ],
            )
          : buildContent(),
    );
  }

  Widget buildContent() {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 50, right: 50),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "WorkWave",
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4c4c4c),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Welcome to WorkWave ERP",
                  style: TextStyle(color: Color(0xffb5b5b5), fontSize: 16),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          labelText: 'Enter your email',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email is required';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: passwordController,
                        obscureText: !_passwordVisible,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is required';
                          }
                          return null;
                        },
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Forgot password",
                          style: TextStyle(
                            color: Color(0xffb5b5b5),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Container(
                          width: 150,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xff696969)),
                            ),
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                try {
                                  var email =
                                      emailController.text.trim().toString();
                                  var password =
                                      passwordController.text.trim().toString();
                                  await getLogin(email, password);
                                  if (myModel != null) {
                                    var value = myModel!.userId!.toString();
                                    setShared("userId", value);
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => HomePage(),
                                      ),
                                    );
                                  } else {
                                    emailController.clear();
                                    passwordController.clear();

                                    showMsg("something went wrong ", context);
                                    Navigator.pop(context);
                                  }
                                } catch (e) {
                                  // ignore: use_build_context_synchronously
                                  showMsg(e.toString(), context);
                                  Navigator.pop(context);
                                }
                              }
                            },
                            child: Text(
                              "Sign in",
                              style: TextStyle(color: Colors.grey.shade200),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
