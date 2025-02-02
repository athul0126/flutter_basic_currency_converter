import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}
class _HomescreenState extends State<Homescreen> {
  double result = 0;
  final TextEditingController controller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Currency Converter"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INR $result',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: "Enter currency in doller",
                    prefixIcon: Icon(Icons.monetization_on_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              //buttons are two types raised and text button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  
                    onPressed: () {
                      //this is used when we use print statement in debug mode
                      // if (kDebugMode) {
                      //   print("button clicked");
                      // }
                      setState(() {
                        result = double.parse(controller.text)*85;
                      });
                      controller.clear();
                    },
                    style: TextButton.styleFrom( //simply use this instead of materials tate property
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50)
                    ),
                    child: Text("Convert")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
