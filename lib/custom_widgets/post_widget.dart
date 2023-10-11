import 'package:flutter/material.dart';

Widget getBlogPost({required String imageName, required String title}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image(
          image: AssetImage('images/$imageName'),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        '$title',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'فروش روی : 12.560',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.price_check,
            size: 25,
            color: Colors.red,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'خرید روی : 12.365',
            style: TextStyle(
              color: Colors.green,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.sell,
            size: 20,
            color: Colors.green,
          ),
        ],
      ),
      Container(
        width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),
      )
    ],
  );
}
