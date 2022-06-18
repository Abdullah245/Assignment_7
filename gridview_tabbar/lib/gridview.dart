import 'package:flutter/material.dart';
import 'package:gridview_tabbar_bottomnavigationbar/tabbar.dart';

class GridViewPage extends StatelessWidget {
  List<String> images = [
    "https://i.insider.com/592f4169b74af41b008b5977?width=700",
    "https://i.insider.com/5915e45614429320008b4da4?width=750&format=jpeg&auto=webp",
    "https://i.pinimg.com/originals/dd/84/e6/dd84e6a055f51611b40ea37bd08dbe85.jpg",
    "https://i.insider.com/592f4169b74af41b008b5977?width=700",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView Demo"),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(12.0),
              child: GridView.builder(
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0),
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(images[index]);
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TabBarPage()),
                  );
                },
                child: Text("Goto Tab-Bar Page")),
          ],
        ),
      
    );
  }
}
