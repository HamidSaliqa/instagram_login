import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Icon passwordIcon =Icon(Icons.visibility_off_outlined);
  bool passwordVisiblaty=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white10,
          elevation: 0,
          leading: Icon(Icons.arrow_back_ios_sharp, color: Colors.black),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),

                /// insta text
                Text(
                  "Instagram",
                  style: TextStyle(fontSize: 50, fontFamily: "Pacifico"),
                ),

                SizedBox(height: 40),

                ///Username textfield
                Container(
                  width: 380,
                  height: 60,
                  child: const TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "Username",
                        hintStyle: TextStyle(color: Colors.black45)),
                  ),
                ),
                SizedBox(height: 5),

                ///password textfield
                Container(
                  width: 380,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: () {
                           setState(() {
                             passwordVisiblaty= !passwordVisiblaty;
                             if(passwordVisiblaty){
                               passwordIcon=Icon(Icons.visibility_outlined);
                             }else{
                               passwordIcon=Icon(Icons.visibility_off_outlined);
                             }
                           });
                          },
                          icon:passwordIcon,
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.black45)),
                    obscuringCharacter: "*",
                    obscureText:passwordVisiblaty ? false:true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: OutlinedButton(
                      style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(LinearBorder.none)),
                      onPressed: () {},
                      child: Text("Forgot password?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                ///log in button
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(
                      Size(380, 60),
                    ),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                  ),
                  child: Text("Log in"),
                ),

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 150,
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "OR",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 150,
                      child: Divider(),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.person),
                  label: Text("Log in with Facebook"),
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(LinearBorder.none)),
                ),

                SizedBox(height: 80),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Don't you have account?"),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Sing Up."),
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(LinearBorder.none),
                          padding: MaterialStatePropertyAll(EdgeInsets.all(0))),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
