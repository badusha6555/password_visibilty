import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_challenge1/controller/provider.dart';
import 'package:provider_challenge1/view/home.dart';

class DropdownList extends StatelessWidget {
  const DropdownList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
               
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                          ));
                    },
                    child: const Text('Back')),
                SizedBox(
                  height: 20,
                ),
                Consumer<DropDown>(
                  builder: (context, value, child) => Container(
                    color: Color.fromARGB(255, 24, 117, 160),
                    height: value.resize ? 200 : 100,
                    width: value.resize ? 200 : 100,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Provider.of<DropDown>(context, listen: false)
                          .changesize();
                    },
                    child: Text('click'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
