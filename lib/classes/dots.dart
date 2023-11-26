import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dotts {
  IconData icon;
  String title;
  Color color;

  Dotts(this.icon, this.title,this.color);
}

List <Dotts> itemsD =[Dotts(Icons.shopping_bag_outlined, "bags", Colors.blueGrey.shade800),
Dotts(CupertinoIcons.eyeglasses, "Glasses", Colors.amber),
Dotts(Icons.shopping_bag_outlined, "bags", Colors.blueGrey.shade800),
  Dotts(CupertinoIcons.eyeglasses, "Glasses", Colors.amber),];

