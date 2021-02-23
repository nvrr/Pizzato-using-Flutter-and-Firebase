import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:pizza/services/manage_data.dart';
import 'package:provider/provider.dart';

class MiddleHelpers extends ChangeNotifier {
  Widget textFav() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: RichText(
          text: TextSpan(
              text: 'Favourite ',
              style: TextStyle(
                  shadows: [BoxShadow(color: Colors.black, blurRadius: 1)],
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  fontSize: 36.0),
              children: <TextSpan>[
            TextSpan(
                text: 'dishes',
                style: TextStyle(
                    shadows: [BoxShadow(color: Colors.grey, blurRadius: 0)],
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey))
          ])),
    );
  }

    Widget dataFav(BuildContext context, String collection) {
      return Container(
        height: 300.0,
        child: FutureBuilder(
          future: Provider.of<ManageData>(context, listen: false)
              .fetchData(collection),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Lottie.asset('animations/delivery.json'),
              );
            }
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 300.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade500,
                              blurRadius: 5,
                              spreadRadius: 3
                            )
                          ]
                        ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Stack(
                              children: [
                                SizedBox(
                                    height: 180.0,
                                    child: Image.network(
                                        snapshot.data[index].data()['image'])),
                                Positioned(
                                    left: 140.0,
                                    child: IconButton(
                                      icon: Icon(EvaIcons.heart, color: Colors.red),
                                      onPressed: () {},
                                    ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                snapshot.data[index].data()['name'],
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black
                                )
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                snapshot.data[index].data()['category'],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.cyan
                                )
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.yellow.shade700),
                                      Text(
                                      snapshot.data[index].data()['ratings'],
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey
                                      )
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:40.0),
                                    child: Row(
                                      children: [
                                        Icon(FontAwesomeIcons.rupeeSign, size: 12,),
                                        Text(
                                        snapshot.data[index].data()['price'].toString(),
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                        )
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                          )),
                    ),
                  ),
                );
              },
            );
          },
        ),
      );
  }


}
