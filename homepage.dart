import 'package:flutter/material.dart';
import 'package:rumah_adat/model/rumah_adat_model.dart';
import 'package:rumah_adat/view/component/item_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xFF31a892),
            floating: true,
            pinned: true,
            snap: true,
            centerTitle: false,
            title: const Text(
              'Rumah Adat Indonesia',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            bottom: AppBar(
              backgroundColor: const Color(0xFF31a892),
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        focusColor: Color(0xFF31a892),
                        hintText: 'Search for something',
                        prefixIcon:
                            Icon(Icons.search, color: Color(0xFF31a892)),
                        suffixIcon:
                            Icon(Icons.camera_alt, color: Color(0xFF31a892))),
                  ),
                ),
              ),
            ),
          ),

          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate([
              Spacer(),
              Container(
                height: 620,
                child: ListView.builder(
                    itemCount: rumahadat.length,
                    itemBuilder: (context, int key) {
                      return ItemCard(index: key);
                    }),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
