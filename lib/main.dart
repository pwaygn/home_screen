import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  space10() {
    return SizedBox(
      height: 10,
    );
  }

  space20() {
    return SizedBox(
      height: 20,
    );
  }

  item1() {
    return ItemContainer(
      image: "assets/images/2in1.png",
      name: "2 In 1",
      value: "3100",
    );
  }

  item2() {
    return ItemContainer(
      image: "assets/images/fine.png",
      name: "Fine",
      value: "2150",
    );
  }

  item3() {
    return ItemContainer(
      image: "assets/images/beon.png",
      name: "Beon",
      value: "2600",
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("Home"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.timer),
              onPressed: () {
                print("Pressed history");
              },
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () => print("Shop"),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            space10(),
            Container(
              height: 60,
              color: Colors.indigo,
              child: Center(
                  child: Text(
                    "Product",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
            ),
            space10(),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                        height: 40,
                        color: Colors.indigo,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Nan Myaing",
                            style: TextStyle(fontSize: 18),
                          ),
                        )),
                    space10(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.star, size: 50, color: Colors.indigo),
                        Icon(Icons.star, size: 50, color: Colors.indigo)],
                    ),
                    space10(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[Icon(Icons.star, size: 50, color: Colors.indigo),Icon(Icons.star, size: 50, color: Colors.indigo)],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class ItemContainer extends StatelessWidget {
  String image;
  String name;
  String value;
  ItemContainer({this.image, this.name, this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        width: 170,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200,
              width: 170,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Container(
                color: Colors.indigo,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        children: <Widget>[
                          Text(
                            name,
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            value,
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    )
                  ],
                )),
          ],
        ));
  }
}