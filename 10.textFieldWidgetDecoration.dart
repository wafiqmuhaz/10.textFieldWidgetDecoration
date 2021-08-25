import 'package:flutter/material.dart';

void main() {
  runApp(allone());
}

class allone extends StatefulWidget {
  const allone({Key? key}) : super(key: key);

  @override
  _alloneState createState() => _alloneState();
}

class _alloneState extends State<allone> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("TextField")),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person), // icon didepan teks
                    prefixText: "Name: ",
                    prefixStyle: TextStyle(color: Colors.grey),
                    labelText: "Nama Lengkap",
                    hintText: "Nama Lengkapmu siapa?",
                    hintStyle: TextStyle(fontSize: 12),
                    // suffixIcon: Icon(Icons.person), // icon dibelakang teks
                    icon: Icon(Icons.adb),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                maxLength: 25,
                obscureText: true, // Membuat teks tidak terlihat
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text),
            ],
          ),
        ),
      ),
    );
  }
}
