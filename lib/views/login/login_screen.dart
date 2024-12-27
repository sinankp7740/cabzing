import 'package:cabzing/main.dart';
import 'package:cabzing/themes/colors.dart';
import 'package:cabzing/views/bottom_navigation.dart';
import 'package:cabzing/views/login/widgets/login_textfields.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final AppColors theme = AppColors();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(

      //   backgroundColor: Colors.transparent,
      //   actions: [
      //     TextButton(
      //         style: TextButton.styleFrom(
      //             backgroundColor: theme.colorBlack,
      //             foregroundColor: theme.colorWhite),
      //         onPressed: () {},
      //         child: const Text("English"))
      //   ],
      // ),
      body: SafeArea(
        child: Container(
          width: size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF2C2F16),
                // Colors.black, // Dark yellow-green
                Color(0xFF1A1A2F), // Dark blue-purple
                Color(0xFF1A0F1A), // Dark purple
              ],
              stops: [0.0, 0.5, 1.0],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          foregroundColor: theme.colorWhite),
                      onPressed: () {},
                      child: const Text("English"))
                ],
              ),
              SizedBox(
                height: size.height * 0.2,
              ),
              Text(
                "Login",
                style: TextStyle(
                    color: theme.colorWhite,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Login to your vikin account",
                style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 12,
              ),
              LoginTextfields(),
              const SizedBox(
                height: 12,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: theme.colorBlue),
                  onPressed: () {},
                  child: const Text("Forgotten Password?")),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  style: TextButton.styleFrom(
                      maximumSize: Size(size.width * 0.3, 50),
                      backgroundColor: theme.colorBlue,
                      foregroundColor: theme.colorWhite),
                  onPressed: () => navigatorKey.currentState?.push(
                      MaterialPageRoute(builder: (_) => BottomNavigation())),
                  child: const Row(
                    children: [
                      Text("Sign in"),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.arrow_forward_rounded)
                    ],
                  )),
              //  const     Spacer(),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                            maximumSize: Size(size.width * 0.8, 40),
                            backgroundColor: Colors.transparent,
                            foregroundColor: theme.colorWhite),
                        onPressed: () {},
                        child: const Text("Don't have an Account?")),
                    TextButton(
                        style: TextButton.styleFrom(
                            maximumSize: Size(size.width * 0.8, 40),
                            backgroundColor: Colors.transparent,
                            foregroundColor: theme.colorBlue),
                        onPressed: () {},
                        child: const Text("Sign up now!")),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
