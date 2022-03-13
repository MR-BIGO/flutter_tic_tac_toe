import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  ListItem({Key? key}) : super(key: key);



  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  String symbol = "";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            symbol = "yes";
          },
        );
      },
      child: Container(
        
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          color: Colors.white,
          
        ),
        
        child: ListTile(
          textColor: Colors.indigoAccent[700],
          title: Text(
            symbol,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
