import 'package:flutter/material.dart' hide Router;

class GoogleButton extends StatelessWidget {
  final String imageUrl;
  final String text;
  GoogleButton({required this.imageUrl, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.0,
      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffF14336), width: 0.6),
          borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        children: [
          Image(
            image: NetworkImage("${imageUrl}"),
            width: 30.0,
            height: 30.0,
          ),
          Container(margin: EdgeInsets.only(left: 10.0), child: Text(text)),
        ],
      ),
    );
  }
}
