import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = TextEditingController();

  String? anyText;
  bool? canCrypt;

  void cryptographText(String text, String cryptoType) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width / 100 * 80,
              child: TextFormField(
                controller: _controller,
                initialValue: anyText,
                decoration: const InputDecoration(
                  icon: Icon(Icons.note_sharp),
                  hintText: 'Write anything here',
                  labelText: 'Write a text here and see cryptographed *',
                ),
              ),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent),
              ),
              onPressed: () {
                if (anyText != null) {
                  canCrypt = true;
                } else {
                  canCrypt = false;
                }
              },
              child: const Text("Click here to Cryptograph"),
            ),
            if (canCrypt == true)
              Text("TRUE")
            else if (canCrypt == false)
              Text("FALSE")
          ],
        ),
      ),
    );
  }
}
