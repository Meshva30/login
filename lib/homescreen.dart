import 'package:flutter/material.dart';
import 'package:login/showscreen.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

TextEditingController textEmail=TextEditingController();
TextEditingController textPassword=TextEditingController();

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/imges.png",
              height: 300,
            ),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Center(
                child: Text(
                  "Login to Your Account",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  
                        children: [
                          SizedBox(
                            width: 120,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child:
                                Image.asset("assets/ff.png", fit: BoxFit.cover),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child:
                                Image.asset("assets/i.jpg", fit: BoxFit.cover),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child:
                                Image.asset("assets/gg.png", fit: BoxFit.cover),
                          ),
                        ],
                      ),
                      Text(
                        "Or use Your email account",
                        style: TextStyle(fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: textEmail,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'abc@gmail.com',
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Colors.blue,
                            ),
                            label: Text("Email"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: textPassword,
                          keyboardType: TextInputType.number,
                          obscureText: true,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: '12345678',
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.blue,
                            ),
                            label: Text("Password"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      InkWell(
                        onTap: () {
                          String email = textEmail.text;
                          setState(() {

                            email=textEmail.text;
                            email=textPassword.text;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => showscreen(email: email, password: 'password',)),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text("LOGIN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))),
                        ),

                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        "Dont have an account ?",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
