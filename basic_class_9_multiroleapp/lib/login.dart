import 'package:basic_class_9_multiroleapp/admin_screen.dart';
import 'package:basic_class_9_multiroleapp/student_screen.dart';
import 'package:basic_class_9_multiroleapp/teacher_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final userEmailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();
  String dropDownValue = 'student';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: userEmailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "email",
                  fillColor: Colors.grey[400],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: passwordController,
                //keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                //obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: "password",
                  fillColor: Colors.grey[400],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "age",
                  fillColor: Colors.grey[400],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              DropdownButton<String>(
                value: dropDownValue,
                icon: const Icon(Icons.admin_panel_settings),
                style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                underline: Container(
                  height: 2,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropDownValue = newValue!;
                  });
                },
                items: const [
                  DropdownMenuItem(
                    value: "teacher",
                    child: Text("teacher"),
                  ),
                  DropdownMenuItem(
                    value: "student",
                    child: Text("student"),
                  ),
                  DropdownMenuItem(
                    value: "admin",
                    child: Text("admin"),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async {
                  SharedPreferences sp = await SharedPreferences.getInstance();
                  sp.setString("email", userEmailController.text.toString());
                  sp.setString("password", passwordController.text.toString());
                  sp.setString("age", ageController.text.toString());
                  sp.setBool("isLoggedIn", true);
                  sp.setString("dropDown", dropDownValue);
                  if (dropDownValue == 'student') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StudentScreen()),
                    );
                  } else if (dropDownValue == 'teacher') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TeacherScreen()),
                    );
                  } else if (dropDownValue == 'admin') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AdminScreen()),
                    );
                  }
                },
                child: Container(
                  height: 40,
                  width: double.infinity,
                  color: Colors.amber,
                  child: const Center(
                    child: Text("login"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
