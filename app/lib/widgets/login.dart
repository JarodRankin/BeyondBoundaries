import 'package:app/shared/styles.dart';
import 'package:flutter/material.dart';
import "package:universal_html/html.dart" as html;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    bool isSupportedPlatform() {
      final userAgent = html.window.navigator.userAgent.toLowerCase();
      if (userAgent.contains('windows') ||
          userAgent.contains('macintosh') ||
          userAgent.contains('mac')) {
        return true;
      } else {
        return false;
      }
    }

    if (!isSupportedPlatform()) {
      return const Scaffold(
        body: Center(
          child: Text(
            'This app is only supported on Windows and macOS.',
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/shared/assets/backgroundMountains.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: screenWidth / 2,
            height: screenHeight / 2,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t Just Achieve Your Goals',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: subText,
                          ),
                        ),
                        Text(
                          'Go BEYOND',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: subText,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Text(
                          'Welcome Back! Please login to your account.',
                          style: TextStyle(
                            color: beyondColor,
                            fontSize: welcomeText,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SizedBox(
                            width: screenWidth / 4,
                            child: TextField(
                              controller: usernameController,
                              decoration: const InputDecoration(
                                labelText: 'Username',
                                labelStyle: TextStyle(color: beyondColor),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SizedBox(
                            width: screenWidth / 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextField(
                                  controller: passwordController,
                                  decoration: const InputDecoration(
                                    labelText: 'Password',
                                    labelStyle: TextStyle(color: beyondColor),
                                    border: OutlineInputBorder(),
                                  ),
                                  obscureText: true,
                                ),
                                const SizedBox(height: 10),
                                MouseRegion(
                                  onEnter: (_) => setState(() {
                                    isHovering = true;
                                  }),
                                  onExit: (_) => setState(() {
                                    isHovering = false;
                                  }),
                                  child: GestureDetector(
                                    onTap: () {
                                      print("Forgot Password tapped");
                                    },
                                    child: Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                          fontSize: welcomeText,
                                          color: isHovering
                                              ? Colors.blue
                                              : beyondColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.02),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        height: buttonHeight,
                                        width: buttonWidth,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            print("Login Button pressed");
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: beyondColor,
                                            foregroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 15,
                                              horizontal: 40,
                                            ),
                                          ),
                                          child: Text(
                                            'Login',
                                            style: TextStyle(
                                                fontSize: welcomeText,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: screenWidth * 0.02),
                                    Expanded(
                                      child: SizedBox(
                                        height: buttonHeight,
                                        width: buttonWidth,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            print("Sign Up Button pressed");
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            foregroundColor: beyondColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 15,
                                              horizontal: 40,
                                            ),
                                            side: const BorderSide(
                                              color: beyondColor,
                                            ),
                                          ),
                                          child: Text(
                                            'Sign Up',
                                            style: TextStyle(
                                                fontSize: welcomeText,
                                                color: beyondColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            'lib/shared/assets/webAppLogo.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
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
