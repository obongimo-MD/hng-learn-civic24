import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            padding: EdgeInsets.symmetric(vertical: 16),
            textStyle: const TextStyle(fontSize: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 0,
            side: BorderSide(color: Colors.grey.shade300),
          ),
        ),
      ),
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // <-- LEFT ALIGN
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/civic24_logo.png',
                      height: 82,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Create Account",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Sign up to get started!",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 30),
                  Text("Username"),
                  TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                  SizedBox(height: 20),
                  Text("Password"),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Color.fromRGBO(158, 0, 0, 1),
                      ),
                    ),
                    obscureText: true, // hides password
                  ),
                  SizedBox(height: 80),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(158, 0, 0, 1),
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: Center(child: Text("Sign Up")),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset('assets/images/google_logo.png'),
                          ),
                          label: Text("Continue with Google"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: SizedBox(
                            width: 24,
                            height: 24,
                            child: Icon(Icons.apple, size: 24),
                          ),
                          label: Text("Continue with Apple"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? "),
                      TextButton(onPressed: () {}, child: Text("Log In")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
