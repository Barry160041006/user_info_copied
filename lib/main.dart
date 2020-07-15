import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: UserInfo(),
));

class UserInfo extends StatefulWidget {
  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {

  int numberOfWives = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Info'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/IMG_20180203_175112.jpg'),
                radius: 45.0,
              ),
            ),
            Divider(height: 80.0, color: Colors.grey,),
            Text(
              'NAME',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey,
              ),
            ),
            Text(
              'Muhammed Barry',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 20.0,),
            Text(
              'OCCUPATION',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey
              ),
            ),
            Text(
              'Student',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 20.0,),
            Text(
              'NUMBER of WIVES',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey
              ),
            ),
            Text(
              '$numberOfWives',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              children: <Widget>[
                Icon(
                    Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text(
                  'Muhammed@gmail.com',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
      backgroundColor: Colors.grey[900],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            numberOfWives+=1;
          });
        },
        backgroundColor: Colors.green[400],
        child: Icon(Icons.add, size: 28.0, color: Colors.amberAccent,)
      ),
    );
  }
}


/*class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Info'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/IMG_20180203_175112.jpg'),
                radius: 45.0,
              ),
            ),
            Divider(height: 80.0, color: Colors.grey,),
            Text(
              'NAME',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey,
              ),
            ),
            Text(
              'Muhammed Barry',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 20.0,),
            Text(
              'OCCUPATION',
              style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.grey
              ),
            ),
            Text(
              'Student',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text(
                  'Muhammed@gmail.com',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}*/
