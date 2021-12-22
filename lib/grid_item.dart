import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String id;
  final String title;
  final Color coloras;
  final Icon iconapp;

  const GridItem(
      {required this.id,
      required this.title,
      required this.coloras,
      required this.iconapp});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 15)),
              IconButton(
                onPressed: () {},
                icon: iconapp,
                iconSize: 45,
                color: coloras.withOpacity(0.6),
              ),
              Text(title,
                  style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Raleway'),
                  softWrap: true,
                  overflow: TextOverflow.fade)
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: coloras.withOpacity(0.1),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          border: Border.all(
            width: 1,
            color: coloras.withOpacity(0.18),
          ),
        ),
      ),
    );
  }
}
