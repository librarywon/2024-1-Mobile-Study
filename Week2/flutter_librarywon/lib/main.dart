import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Week2"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomColorContainer(
                  color: Colors.red, marginRight: 5, marginBottom: 5),
              CustomColorContainer(
                  color: Colors.blue, marginLeft: 5, marginBottom: 5),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomColorContainer(
                  color: Colors.yellow, marginRight: 5, marginTop: 5),
              CustomColorContainer(
                  color: Colors.green, marginLeft: 5, marginTop: 5),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20), 
            child: Text(
              "librarywon Flutter",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class CustomColorContainer extends StatelessWidget {
  final Color color;
  final double marginLeft;
  final double marginTop;
  final double marginRight;
  final double marginBottom;

  const CustomColorContainer({
    Key? key,
    required this.color,
    this.marginLeft = 0,
    this.marginTop = 0,
    this.marginRight = 0,
    this.marginBottom = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        margin: EdgeInsets.fromLTRB(
            marginLeft, marginTop, marginRight, marginBottom),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ));
  }
}
