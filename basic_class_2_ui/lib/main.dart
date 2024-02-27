import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        height: 50,
                        width: 50,
                        image: AssetImage("images/logo.png"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Maintenance",
                            style: TextStyle(
                              fontFamily: "Rubik Medium",
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            "Box",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: "Rubik Medium",
                              fontSize: 24,
                              color: Color(0xffF9703b),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Rubik Medium",
                      color: Color(0xff2D3142),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet,\nconsectetuer adipiscing elit.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Rubik Regular",
                      color: Color(0xff4C5980),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 25,
                      left: 25,
                      right: 25,
                      bottom: 10,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffE4E7EB),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffE4E7EB),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: const Color.fromARGB(255, 229, 231, 233),
                        filled: true,
                        hintText: "Email",
                        hintStyle: const TextStyle(
                          fontFamily: "Rubik Regular",
                          fontSize: 14,
                        ),
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Color(0xff4C5980),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 25,
                      left: 25,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffE4E7EB),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffE4E7EB),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: const Color.fromARGB(255, 229, 231, 233),
                        filled: true,
                        hintText: "Password",
                        hintStyle: const TextStyle(
                          fontFamily: "Rubik Regular",
                          fontSize: 14,
                        ),
                        suffixIcon: const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Color(0xff4C5980),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color(0xff4C5980),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 25),
                    alignment: Alignment.centerRight,
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        //color: Color(0xff2D3142),
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "Rubik Regular",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffF9703b),
                    ),
                    child: const Center(
                      child: Text(
                        "LOG IN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "Rubik Regular",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Color(0xff4C5980),
                          fontSize: 14,
                          fontFamily: "Rubik Regular",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: Color(0xffF9703b),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Rubik Regular",
                        ),
                      ),
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
