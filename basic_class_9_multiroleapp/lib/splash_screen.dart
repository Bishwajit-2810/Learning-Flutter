import 'dart:async';
import 'package:basic_class_9_multiroleapp/admin_screen.dart';
import 'package:basic_class_9_multiroleapp/login.dart';
import 'package:basic_class_9_multiroleapp/student_screen.dart';
import 'package:basic_class_9_multiroleapp/teacher_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogedin();
  }

  void isLogedin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? userType = sp.getString("dropDown");
    bool isLogin = sp.getBool("isLoggedIn") ?? false;
    if (isLogin) {
      if (userType == 'student') {
        Timer(const Duration(seconds: 5), () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const StudentScreen()));
        });
      } else if (userType == 'teacher') {
        Timer(const Duration(seconds: 5), () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TeacherScreen()));
        });
      } else if (userType == 'admin') {
        Timer(const Duration(seconds: 5), () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AdminScreen()));
        });
      }
    } else {
      Timer(const Duration(seconds: 5), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const LogIn()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
        image: NetworkImage(
            'https://images.pexels.com/photos/1671643/pexels-photo-1671643.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
      ),
    );
  }
}
