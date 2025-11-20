import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
          backgroundColor: Colors.pink[50],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyButton(),
              MyButton(),
              MyButton(),
              MyButton(),
              MyButton(),
              MyButton(),
            ],
          )
        ),
      ),
    ),
  );
}

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyButton> {
  String button = "Not Selected";
  Color buttonBackgroundColor = Colors.blue[50]!;
  Color textColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonBackgroundColor,
          foregroundColor: textColor,
        ),
        onPressed: () => {
          setState(() {
            button = "Selected";
            buttonBackgroundColor = Colors.blue[500]!;
            textColor = Colors.white;
          }),
        },
        child: Center(child: Text(button)),
      ),
    );
  }
}
