import 'package:flutter/material.dart';
import 'package:numeric_check/drawer.dart';
import 'package:numeric_check/grid_item.dart';
import 'package:numeric_check/itemsdata.dart';

class Practice extends StatelessWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Dairy',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, fontFamily: 'Raleway'),
        ),
        backgroundColor: Colors.greenAccent.withOpacity(0.6),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const ADrawer(),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, left: 110),
              child: Row(
                children: [
                  Text(
                    'Monday',
                    style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Raleway'),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Text(
                    '12:00 PM',
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Raleway'),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 100, top: 70),
              child: const Text(
                'Lets Write Something...',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Raleway'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: GridView(
                padding: const EdgeInsets.all(25),
                children: TEMS_DATA
                    .map(
                      (e) => GridItem(
                          id: e.id,
                          title: e.title,
                          coloras: e.color,
                          iconapp: (e.icon)),
                    )
                    .toList(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 1.4 / 1.02,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
