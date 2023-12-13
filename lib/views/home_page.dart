import 'package:customize_button/share_widget/bottom_navigation_custom.dart';
import 'package:customize_button/share_widget/custom_button.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Button Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("data"),
            customButton(
              onPressed: () {},
              buttonText: 'Click me',
              buttonColor: Colors.red,
            ),
            const SizedBox(height: 20),
            customButton(
              onPressed: () {},
              buttonText: 'Click me Green ',
              buttonColor: Colors.green,
            ),
            const SizedBox(height: 20),
            customButton(
              onPressed: () {},
              buttonText: 'Click me',
              buttonColor: Colors.blue,
            ),
            customButton(
              onPressed: () {
                // Your button click logic here
                print('Button Clicked!');
              },
              buttonText: 'Click Me',
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationCustom(),
    );
  }
}
