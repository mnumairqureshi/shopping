import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

// ignore: camel_case_types
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController txt = TextEditingController();
  // String password = "1Great2";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    "https://appsforpcplanet.org/wp-content/uploads/2020/06/whatsapp-dp-2.jpg"),
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.blue,
                ),
                title: Text("Log In", style: TextStyle(color: Colors.blue)),
                trailing: Icon(
                  Icons.arrow_forward_sharp,
                  color: Colors.blue,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'login');
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.login,
                  color: Colors.blue,
                ),
                title:
                    Text("New Sign Up", style: TextStyle(color: Colors.blue)),
                trailing: Icon(
                  Icons.arrow_forward_sharp,
                  color: Colors.blue,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'signup');
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 350,
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/originals/66/22/ab/6622ab37c6db6ac166dfec760a2f2939.gif"),
                ),
                height: MediaQuery.of(context).size.height * 0.3,

                width: MediaQuery.of(context).size.width * 1,
                // height: 300,
                // margin: EdgeInsets.all(50),
                // color: Colors.red.shade200,
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 80,
                  right: 50,
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.3,
                    right: 35,
                    left: 35,
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        // child: TextField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: "e.g@xyz.com",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      // ),
                      const SizedBox(
                        height: 7.5,
                      ),
                      TextField(
                          controller: txt,
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Password",
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              hintText: "1Great2",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      const SizedBox(
                        height: 1,
                      ),
                      FlutterPwValidator(
                          width: 400,
                          height: 70,
                          minLength: 7,
                          uppercaseCharCount: 1,
                          numericCharCount: 2,
                          successColor: Colors.green,
                          failureColor: Colors.red,
                          // specialCharCount: 1,
                          onSuccess: () {
                            Navigator.pushNamed(context, 'home');

                            // print("Matched");

                            // Scaffold.of(context).showSnackBar(
                            //     SnackBar(content: Text("Password is matched")));
                          },
                          controller: txt),
                      const SizedBox(
                        height: 125,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "home");
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "forgetpass");
                            },
                            child: const Text(
                              "Forget Password",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "signup");
                              },
                              child: const Text("Create an Account"))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class constant {}
