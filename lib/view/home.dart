import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_challenge1/controller/provider.dart';
import 'package:provider_challenge1/view/dropdown.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Provider.of<DropDown>(context).selectedValue!,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DropdownList()));
              },
              child: Text('Change Text'),
            ),
          ],
        ),
      ),
    );
  }
}
