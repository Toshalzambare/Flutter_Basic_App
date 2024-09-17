import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: myapp(),
));

class myapp extends StatefulWidget {

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  int level=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.black,
      appBar: AppBar(
        title: Text('GAMING PROFILE TRACKER'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level+=1;
          });
        },
        child:
        Icon(Icons.text_increase),
        backgroundColor: Colors.blueGrey,
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("asset/vs2.jpg"),
              )

            ),
            Divider(
              color: Colors.pink,
              height: 60.0,
            ),
            Text(
              'NAME OF PLAYER',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Insomnia',
              style: TextStyle(
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 3.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'GAME',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Valorant',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT RANK',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Gold 2',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'LEVEL (click A+ To increase)',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.contact_phone,
                  color: Colors.blueAccent,
                  size: 30.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  '1234567890',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email_outlined,
                  color: Colors.blueAccent,
                  size: 35.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  'abc@xyz.com',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}