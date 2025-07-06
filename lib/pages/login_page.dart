import 'package:flutter/material.dart';
import 'package:flutter_auth_ui_app/colors/colors.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                    "Login",
                    style: TextStyle(
                      color: black,
                      fontSize: 35,
                      fontFamily: "myfont",
                    ),
                  ),
                  SizedBox(height: 30),
                  SvgPicture.asset("assets/icons/login.svg", width: 350),
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
                        Navigator.pushNamed(context, "/login");
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
                        "LOGIN",
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
                      Text("Don't have an account?  "),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/signup");
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Background decorations
            Positioned(
              left: 0,
              width: 160,
              child: Image.asset("assets/images/main_top.png"),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              width: 120,
              child: Image.asset("assets/images/login_bottom.png"),
            ),
          ],
        ),
      ),
    );
  }
}
