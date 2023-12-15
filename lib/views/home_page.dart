import 'package:customize_button/share_widget/bottom_navigation_custom.dart';
import 'package:customize_button/share_widget/custom_button.dart';
import 'package:customize_button/share_widget/custom_button_loading.dart';
import 'package:customize_button/share_widget/google_button.dart';
import 'package:customize_button/share_widget/rounded_button.dart';
import 'package:customize_button/share_widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customButtonLoading(
                text: 'Button loding',
                onPressed: () {},
                colorButton: false,
                isLoading: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customButtonLoading(
                text: 'Button',
                onPressed: () {},
                colorButton: false,
                isLoading: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customButtonLoading(
                text: 'Custom Styled Text',
                onPressed: () {
                  // Your onPressed logic here
                },
                colorButton: false,
                isLoading: false,
                textStyle: const TextStyle(
                  color: Colors.blue,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  decorationColor: Colors.red,
                  fontFamily: 'Arial',
                  wordSpacing: 2.0,
                  decorationStyle: TextDecorationStyle.dotted,
                ),
                //  backgroundColor: Colors.yellow, // Custom background color
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customButtonLoading(
                text: 'Loading Button change color',
                onPressed: () {},
                colorButton: false,
                isLoading: false,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextWidget(
                  'TextWidget align start',
                  color: Colors.blue,
                  size: 24.0,
                  weight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 1.2,
                  textAlign: TextAlign.center,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                  fontFamily: 'Arial',
                  wordSpacing: 2.0,
                  decorationStyle: TextDecorationStyle.dotted,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  'TextWidget align center',
                  color: Colors.blue,
                  size: 24.0,
                  weight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 1.2,
                  textAlign: TextAlign.center,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                  fontFamily: 'Arial',
                  wordSpacing: 2.0,
                  decorationStyle: TextDecorationStyle.dotted,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextWidget(
                  'TextWidget align end',
                  color: Colors.blue,
                  size: 24.0,
                  weight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 1.2,
                  textAlign: TextAlign.center,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                  fontFamily: 'Arial',
                  wordSpacing: 2.0,
                  decorationStyle: TextDecorationStyle.dotted,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GoogleButton(
                text: 'fdskfjskd',
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9z_oQBNVajUnmXhawCb73yjjkiS1zL3-5oBc4eacvBw&s',
              ),
            ),
            Gap(30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedButton(
                text: 'RoundedButton',
                onPress: () {},
              ),
            ),
            Gap(30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextWidget(
                "text  ",
                color: Colors.red,
                weight: FontWeight.w700,
                size: 50,
                letterSpacing: 5,
              ),
            ),
            Gap(30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customButton(
                onPressed: () {},
                buttonText: 'Click me',
                buttonColor: Colors.red,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customButton(
                onPressed: () {},
                buttonText: 'Click me Green ',
                buttonColor: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customButton(
                onPressed: () {},
                buttonText: 'Click me',
                buttonColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationCustom(),
    );
  }
}
