import 'package:flutter/material.dart';
import 'package:rumah_adat/model/rumah_adat_model.dart';
import 'package:getwidget/getwidget.dart';
import 'package:rumah_adat/view/detail_page/detail_page.dart';

class ItemCard extends StatelessWidget {
  late final int index;
  ItemCard({required this.index});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(index: index),
          ),
        );
      },
      child: Container(
        child: GFListTile(
          avatar: Image.asset(
            rumahadat[index].image,
            width: 107,
            height: 107,
            fit: BoxFit.cover,
          ),
          title: Text(
            rumahadat[index].name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          subTitle: Text(
            rumahadat[index].shortDesc,
            style: TextStyle(fontSize: 14, color: Colors.white70),
          ),
          icon: Icon(Icons.arrow_forward_rounded),
          color: Color(0xFF31a892),
        ),
      ),
    );
  }
}
