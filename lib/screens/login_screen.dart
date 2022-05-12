import 'package:flutter/material.dart';
import 'package:flutter_web_demo/responsive.dart';
import 'package:flutter_web_demo/screens/registration_screen.dart';
import 'package:flutter_web_demo/utils/const_colour_key.dart';
import 'package:flutter_web_demo/utils/const_fonts_key.dart';
import 'package:flutter_web_demo/utils/const_image_key.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(left: 100, right: 30, top: 15, bottom: 15),
              color: const Color(0xFFFFFFFF),
              child: Row(
                children: [
                  Image.asset(Images().logo, height: 40),
                  const Text("VISION", style: TextStyle(fontSize: 25, fontFamily: POPPINS_BOLD, color: textColour)),
                  const Spacer(),
                  if (!Responsive.isMobile(context))
                  Row(
                    children: const [
                      Text("Home", style: TextStyle(fontSize: 15, fontFamily: POPPINS_MEDIUM, color: headerText)),
                      SizedBox(width: 25),
                      Text("Category", style: TextStyle(fontSize: 15, fontFamily: POPPINS_MEDIUM, color: headerText)),
                      SizedBox(width: 25),
                      Text("Location", style: TextStyle(fontSize: 15, fontFamily: POPPINS_MEDIUM, color: headerText)),
                      SizedBox(width: 25),
                      Text("FAQ", style: TextStyle(fontSize: 15, fontFamily: POPPINS_MEDIUM, color: headerText)),
                      SizedBox(width: 25),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RegistrationScreen()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF0CDAFC), Color(0xFF0666F7)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: const Text("Sign up", style: TextStyle(fontSize: 15, fontFamily: POPPINS_MEDIUM, color: background)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Row(
              children: [
                const Spacer(),
                if(!Responsive.isMobile(context))
                Container(
                  height: size.height - 300,
                  width: Responsive.isTablet(context) ? size.width / 2 - 100 : size.width / 2 - 250,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 25, top: 30),
                        child: Row(
                          children: [
                            Image.asset(Images().logo, height: 30),
                            const Text("VISION", style: TextStyle(fontSize: 20, fontFamily: POPPINS_BOLD, color: textColour)),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(padding: const EdgeInsets.only(left: 40), child: const Text("SIGN IN", style: TextStyle(fontSize: 20, fontFamily: POPPINS_MEDIUM, color: textColour))),
                      Container(padding: const EdgeInsets.only(left: 40), child: const Text("Please sign in to continue", style: TextStyle(fontSize: 15, fontFamily: POPPINS_REGULAR, color: headerText))),
                      const Spacer(),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(right: 40, left: 40),
                          child: const TextField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.email),
                              hintText: "vision_demo@gmail.com",
                              hintStyle: TextStyle(color: Colors.blue, fontFamily: POPPINS_REGULAR),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(right: 40, left: 40),
                          child: const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.lock),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.blue, fontFamily: POPPINS_REGULAR),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Container(
                            width: Responsive.isTablet(context) ? size.width / 2 - 200 : size.width / 2 - 350,
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF0CDAFC), Color(0xFF0666F7)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: const Text("Sign In", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontFamily: POPPINS_MEDIUM, color: background)),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Center(
                        child: RichText(text: const TextSpan(text: "Haven’t Registered?  ", style: TextStyle(fontSize: 15, fontFamily: POPPINS_MEDIUM, color: headerText), children: <TextSpan>[TextSpan(text: "Sign Up", style: TextStyle(fontSize: 15, fontFamily: POPPINS_MEDIUM, color: Colors.blue))])),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                if(!Responsive.isMobile(context))
                SizedBox(
                  height: size.height - 300,
                  width: Responsive.isTablet(context) ? size.width / 2 - 100 : size.width / 2 - 250,
                  child: Image.asset(
                    Images().login,
                    fit: BoxFit.fill,
                  ),
                ),
                const Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
