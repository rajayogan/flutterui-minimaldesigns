import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            'EXPLORE',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            iconSize: 17.0,
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.black,
              iconSize: 17.0,
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
          children: <Widget>[
            Container(
              height: 125.0,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10.0),
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                          height: 70.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.0),
                              color: Colors.orange),
                          child: IconButton(
                            icon: Icon(Icons.add),
                            color: Colors.white,
                            onPressed: () {},
                          )),
                      SizedBox(height: 7.0),
                      Text('Add To',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                  SizedBox(width: 25.0),
                  listItem('assets/chris.jpg', 'Chris', true),
                  SizedBox(width: 25.0),
                  listItem('assets/hugh.jpg', 'Hugh', false),
                  SizedBox(width: 25.0),
                  listItem('assets/johnnydepp.jpg', 'Depp', false),
                  SizedBox(width: 25.0),
                  listItem('assets/tomcruise.jpg', 'Tom', false),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            firstStyleRow('assets/cone.jpeg', 'assets/letter.jpeg', 'assets/chris.jpg'),
            SizedBox(height: 10.0),
            secondStyleRow('assets/window.jpeg', 'assets/cactus.jpeg', 'assets/tomcruise.jpg'),
            SizedBox(height: 10.0),
            infoRow(),
            SizedBox(height: 15.0),
            firstStyleRow('assets/cone.jpeg', 'assets/letter.jpeg', 'assets/chris.jpg'),
            SizedBox(height: 10.0),
            secondStyleRow('assets/window.jpeg', 'assets/cactus.jpeg', 'assets/tomcruise.jpg'),
            SizedBox(height: 10.0),
            infoRow(),
            SizedBox(height: 15.0),
            firstStyleRow('assets/cone.jpeg', 'assets/letter.jpeg', 'assets/chris.jpg'),
            SizedBox(height: 10.0),
            secondStyleRow('assets/window.jpeg', 'assets/cactus.jpeg', 'assets/tomcruise.jpg'),
            SizedBox(height: 10.0),
            infoRow(),
          ],
        ));
  }

  Widget infoRow() {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: (MediaQuery.of(context).size.width - 30.0) / 2,
                height: 100.0,
              child: Column(children: <Widget>[
                Text(
                  'I like the way to place items to show more...',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              image: AssetImage('assets/chris.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Mona Hall',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.orange),
                        ),
                        Text(
                          '10:51PM',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.grey),
                        ),
                      ],
                    ),
                  ])
              ])
                ),
                    SizedBox(width: 10.0),
                  Container(
                width: (MediaQuery.of(context).size.width - 30.0) / 2,
                height: 100.0,
              child: Column(children: <Widget>[
                Text(
                  'I like the way to place items to show more...',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              image: AssetImage('assets/tomcruise.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Mona Hall',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.orange),
                        ),
                        Text(
                          '10:51PM',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.grey),
                        ),
                      ],
                    ),
                  ])
              ])
                ),
                  ],
                )
              );
  }


  Widget secondStyleRow(String imgPath1, String imgPath2, String avatarImg) {
    return Container(
      height: 250.0,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            child: Container(
              height: 250.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath2), fit: BoxFit.cover)),
            ),
          ),
          SizedBox(width: 10.0),
          Container(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            child: Column(
              children: <Widget>[
                Text(
                  'I like the way to place items to show more...',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              image: AssetImage(avatarImg), fit: BoxFit.cover)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Mona Hall',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.orange),
                        ),
                        Text(
                          '10:51PM',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 42.0),
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage(imgPath1), fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget firstStyleRow(String imgPath1, String imgPath2, String avatarImg) {
    return Container(
      height: 250.0,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Row(
        children: [
          Container(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) /2,
            child: Column(
              children: [
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(imgPath1),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                SizedBox(height: 15.0),
                Text('I like the way to place Items to show more...',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat'
                )
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage(avatarImg)
                        )
                      )
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Mona Hall',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.orange),
                        ),
                        Text(
                          '10:51PM',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.grey),
                        ),
                      ],
                    )
                  ]
                )
              ]
            )
          ),
          SizedBox(width: 10.0),
          Container(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) /2,
            child: Container(
              height: 250.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(imgPath2),
                  fit: BoxFit.cover
                )
              )
            )
          )
        ]
      )
    );
  }

  Widget listItem(String imgPath, String name, bool available) {
    return Column(
      children: <Widget>[
        Container(
          height: 70.0,
          width: 70.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
              image: DecorationImage(
                  image: AssetImage(imgPath), fit: BoxFit.cover)),
        ),
        SizedBox(height: 7.0),
        Row(
          children: <Widget>[
            Text(name,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600)),
            SizedBox(width: 4.0),
            available
                ? Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.orange),
                  )
                : Container()
          ],
        )
      ],
    );
  }
}
