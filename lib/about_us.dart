import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  Card buildContainer(String value) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      color: Colors.red,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.55,
        margin: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ]),
          //
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  value,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  Card buildContainerProjectMember(String value) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      color: Colors.black,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.90,
        margin: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ]),
            child: Text(
              value,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Buddy'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Colors.grey.shade100,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildContainerProjectMember('Project Developed By'),
              buildContainer('Laxminarayan Sharma'),
             
            ],
          ),
        ),
      ),
    );
  }
}
