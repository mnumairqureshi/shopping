// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:shopping/home.dart';
// ignore: unused_import
import 'package:shopping/signup.dart';
import 'package:shopping/myDrawer.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: camel_case_types
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailtxt = TextEditingController();
  TextEditingController passwdtxt = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  Future signInWithEmailAndPassword() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailtxt.text, password: passwdtxt.text);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
      Fluttertoast.showToast(msg: "Logged in");

      // if(userCredential != null){
      //   FirebaseFirestore firestore = FirebaseFirestore.instance;
      //   FirebaseFirestore.instance.collection('userdatashot snap){

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Navigator.pop(context);
        Fluttertoast.showToast(msg: 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Navigator.pop(context);
        Fluttertoast.showToast(msg: 'Wrong password provided for that user.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      // drawer: Drawer(child: Mydrawer()),
      drawer: Drawer(
        child: ListView(
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                  "https://appsforpcplanet.org/wp-content/uploads/2020/06/whatsapp-dp-2.jpg"),
            ),
            Divider(),
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
              title: Text("New Sign Up", style: TextStyle(color: Colors.blue)),
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
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: emailtxt,
                      // child: TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: "e.g@xyz.com",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                      ),
                    ),
                    // ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                        controller: passwdtxt,
                        obscureText: false,
                        decoration: InputDecoration(
                            labelText: "Password",
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            hintText: "1Great2",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            )))),
                    const SizedBox(
                      height: 1,
                    ),
                    // FlutterPwValidator(
                    //     width: 400,
                    //     height: 70,
                    //     minLength: 7,
                    //     uppercaseCharCount: 1,
                    //     numericCharCount: 2,
                    //     successColor: Colors.green,
                    //     failureColor: Colors.red,
                    //     // specialCharCount: 1,
                    //     onSuccess: () {
                    //       Navigator.pushNamed(context, 'home');
                    //       // print("Matched");
                    //       // Scaffold.of(context).showSnackBar(
                    //       //     SnackBar(content: Text("Password is matched")));
                    //     },
                    //     controller: passwdtxt),
                    const SizedBox(
                      height: 125,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.green),
                            onPressed: () {
                              signInWithEmailAndPassword();
                              // Navigator.pushNamed(context, "home");
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
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
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.green),
                          onPressed: () {
                            Navigator.pushNamed(context, "forgetpass");
                          },
                          child: const Text(
                            "Forget Password",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "signup");
                          },
                          child: const Text("Create an Account",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class constant {}
