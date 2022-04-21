import 'package:flutter/material.dart';
import 'package:rumah_adat/model/rumah_adat_model.dart';

class DetailPage extends StatefulWidget {
  final int index;
  const DetailPage({Key? key, required this.index}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool _like = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          child: Stack(
            children: [
              Container(
                height: height * 0.55,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(rumahadat[widget.index].image),
                  fit: BoxFit.cover,
                )),
                child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.0),
                  Colors.black.withOpacity(0.0),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.9),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight))),
              ),
              Container(
                width: width,
                margin: EdgeInsets.only(top: height * 0.5),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      rumahadat[widget.index].name,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF31a892)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Deskripsi singkat",
                      style: TextStyle(
                          color: Color(0xFF31a892).withOpacity(0.5),
                          fontSize: 16,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      rumahadat[widget.index].desc,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 0.5,
                          wordSpacing: 1.5),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 30,
                top: height * 0.05,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.keyboard_backspace,
                    size: 42,
                    color: Color(0xFF31a892),
                  ),
                ),
              ),
              Positioned(
                right: 30,
                top: height * 0.45,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _like = !_like;
                    });
                  },
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 5,
                              spreadRadius: 1)
                        ]),
                    child: Icon(
                      Icons.favorite,
                      size: 45,
                      color: (_like) ? Color(0xFF31a892) : Colors.grey[600],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
