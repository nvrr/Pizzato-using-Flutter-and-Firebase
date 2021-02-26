import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pizza/services/maps.dart';

class Headers extends ChangeNotifier {
  Widget appBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(icon: Icon(FontAwesomeIcons.userAlt),onPressed: () {}),
          Row(
            children: [
              Icon(
                FontAwesomeIcons.locationArrow,
                color: Colors.grey.shade600,
                size: 16.0,
                ),
              Container(
                constraints: BoxConstraints(
                  maxWidth: 250.0
                ),
                child: Text(
                  finalAddress,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300
                  )
                ),
              ),
            ],
          ),
          Expanded(
                      child: IconButton(icon: Icon(FontAwesomeIcons.search, 
            color: Colors.black,),
            onPressed: () {}),
          )
        ],
      ),
    );
  }
  Widget headerText() {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 300.0,
      ),
      child: RichText(
        text: TextSpan(
        text: 'What would you like ',
        style: TextStyle(
          fontWeight: FontWeight.w300,
          color: Colors.black,
          fontSize: 29.0
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'to eat?',
            style: TextStyle(
              fontSize: 46.0,
              fontWeight: FontWeight.w600,
              color: Colors.black
            )
          )
        ]
      ),)
    );
  }

  Widget headerMenu(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.redAccent,
                    blurRadius: 15
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                color: Colors.grey.shade100,
              ),
              height: 40.0,
              width: 100.0,
              child: Center(
                child: Text(
                  'All food',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )
                ),
                )
            )
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.lightBlueAccent,
                    blurRadius: 15
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                color: Colors.grey.shade100,
              ),
              height: 40.0,
              width: 100.0,
              child: Center(
                child: Text(
                  'Pizza',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )
                ),
                )
            )
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.greenAccent,
                    blurRadius: 15
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                color: Colors.grey.shade100,
              ),
              height: 40.0,
              width: 100.0,
              child: Center(
                child: Text(
                  'Pasta',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )
                ),
                )
            )
          )
        ],
      ),
    );
  }
}