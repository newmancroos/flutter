import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            padding: EdgeInsets.only(top: 30.0, left: 10.0),
            //width: 192.0,
            //height: 96.0,
            //padding: EdgeInsets.all(16.0),
            //padding: EdgeInsets.only(left:16.0),
            //margin: EdgeInsets.all(16.0),
            //margin: EdgeInsets.only(left:16.0),
            // child: Text(
            //   "Selva",
            //   textDirection: TextDirection.ltr,
            //   style: TextStyle(
            //     fontSize: 30.0,
            //     decoration: TextDecoration.none,
            //     fontFamily: 'Oxygen',
            //     fontWeight: FontWeight.normal,
            //     color:Colors.white
            //     ),
            // )
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Margherita",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 30.0,
                          decoration: TextDecoration.none,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      "Tomato, Mozzarella, Basil",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 20.0,
                          decoration: TextDecoration.none,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Marinara",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 30.0,
                          decoration: TextDecoration.none,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      "Tomato, Garlic",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 20.0,
                          decoration: TextDecoration.none,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ))
                  ],
                ),
                PizzaImageWidget(),
                OrderButton(),
              ],
            )));
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza1.png');
    Image image = Image(image: pizzaAsset, width: 400.0, height: 300.0);
    return Container(
      child: image,
    );
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Order your Pizza!"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order completed"),
      content: Text("Thanks for your order"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) => alert
        );
  }
}
