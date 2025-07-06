import 'package:flutter/material.dart';
import 'package:flutter_auth_ui_app/colors/colors.dart';
import 'package:flutter_svg/svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 80),
                  Text(
                    "Signup",
                    style: TextStyle(
                      color: black,
                      fontSize: 35,
                      fontFamily: "myfont",
                    ),
                  ),
                  SizedBox(height: 30),
                  SvgPicture.asset("assets/icons/signup.svg", width: 250),
                  SizedBox(height: 50),

                  // Email Field
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.person, color: Colors.purple),
                        hintText: 'salah@gmail.com',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 18),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Password Field
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock, color: Colors.purple),
                        hintText: 'Password',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 18),
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: Colors.purple[900],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Login Button
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Sign up Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?  "),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: Text(
                          "Sign in",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 250,
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.6,
                            color: Colors.purple[900],
                          ),
                        ),
                        Text(
                          " OR ",
                          style: TextStyle(color: Colors.purple[900]),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.6,
                            color: Colors.purple[900],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.purple, width: 1),
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/facebook.svg",
                          // ignore: deprecated_member_use
                          color: Colors.purple[500],
                          height: 25,
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.purple, width: 1),
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/twitter.svg",
                          // ignore: deprecated_member_use
                          color: Colors.purple[500],
                          height: 25,
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.purple, width: 1),
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/google-plus.svg",
                          // ignore: deprecated_member_use
                          color: Colors.purple[500],
                          height: 25,
                        ),
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                ],
              ),
            ),

            // Background decorations
            Positioned(
              left: 0,
              width: 160,
              child: Image.asset("assets/images/signup_top.png"),
            ),
            Positioned(
              bottom: 0,
              width: 90,
              child: Image.asset("assets/images/main_bottom.png"),
            ),
          ],
        ),
      ),
    );
  }
}
