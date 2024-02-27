import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1/count_provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   final countProvider = Provider.of<CountProvider>(context, listen: false);
  //   Timer.periodic(const Duration(milliseconds: 0), (timer) {
  //     countProvider.setCount();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text(" Basic Counter"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            // child: Text(
            //   countProvider.count.toString(),
            //   style: const TextStyle(fontSize: 30),
            // ),
            child: Consumer<CountProvider>(
              builder: (context, value, child) => Text(
                value.count.toString(),
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
