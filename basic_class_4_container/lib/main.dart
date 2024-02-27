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
        appBar: AppBar(
          title: const Text("Container"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  transform: Matrix4.rotationZ(.1),
                  //alignment: Alignment.bottomRight,
                  margin: const EdgeInsets.only(left: 100),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.red,
                      width: 2,
                    ),
                    //shape: BoxShape.circle,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.green,
                        blurRadius: 20,
                      ),
                    ],
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1635805737707-575885ab0820?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
                      ),
                    ),
                  ),
                  height: 200,
                  width: 200,
                  child: const Center(
                    child: Text(
                      "con 1\ndshjfukjhewukrhkedjwhfkhdsakfhjkdghkf",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          transform: Matrix4.rotationZ(.1),
                          //alignment: Alignment.bottomRight,
                          margin: const EdgeInsets.only(left: 100),
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: Colors.red,
                              width: 2,
                            ),
                            //shape: BoxShape.circle,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.green,
                                blurRadius: 20,
                              ),
                            ],
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                "https://images.unsplash.com/photo-1635805737707-575885ab0820?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
                              ),
                            ),
                          ),
                          height: 200,
                          width: 200,
                          child: const Center(
                            child: Text(
                              "con 1\ndshjfukjhewukrhkedjwhfkhdsakfhjkdghkf",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          transform: Matrix4.rotationZ(.1),
                          //alignment: Alignment.bottomRight,
                          margin: const EdgeInsets.only(left: 100),
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: Colors.red,
                              width: 2,
                            ),
                            //shape: BoxShape.circle,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.green,
                                blurRadius: 20,
                              ),
                            ],
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                "https://images.unsplash.com/photo-1635805737707-575885ab0820?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80",
                              ),
                            ),
                          ),
                          height: 200,
                          width: 200,
                          child: const Center(
                            child: Text(
                              "con 1\ndshjfukjhewukrhkedjwhfkhdsakfhjkdghkf",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
