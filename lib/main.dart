import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

final kButtonStyle = ElevatedButton.styleFrom(
  fixedSize: const Size(75, 45),
);

const kButtonTextStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
          backgroundColor: Color.fromARGB(255, 182, 2, 80),
          centerTitle: true,
        ),
        body: const CounterHelp(),
      ),
    );
  }
}

class CounterHelp extends StatefulWidget {
  const CounterHelp({super.key});

  @override
  State<CounterHelp> createState() => _CounterHelpState();
}

class _CounterHelpState extends State<CounterHelp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: kButtonStyle,
              onPressed: () {
                setState(() {
                  if (count < 10) {
                    count++;
                  }
                });
                print(count);
              },
              child: const Text("+", style: kButtonTextStyle),
            ),
            const SizedBox(width: 25),
            Text(
              count.toString(),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 25),
            ElevatedButton(
              style: kButtonStyle,
              onPressed: () {
                setState(() {
                  if (count > 0) {
                    count--;
                  }
                });
                print(count);
              },
              child: const Text(
                "-",
                style: kButtonTextStyle,
              ),
            )
          ],
        )
      ],
    );
  }
}
