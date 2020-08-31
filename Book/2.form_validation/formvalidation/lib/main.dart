import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();

  Order order = Order();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Form(
                key: _formStateKey,
                autovalidate: true,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Espresso',
                          labelText: 'Item',
                        ),
                        validator: (value) => _validateItemRequired(value),
                        onSaved: (value) => order.item = value,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: '3',
                          labelText: 'Quantity',
                        ),
                        validator: (value) => _validateItemCount(value),
                        onSaved: (value) =>
                            order.quantity = int.tryParse(value),
                      ),
                      Divider(
                        height: 32.0,
                      ),
                      RaisedButton(
                        child: Text('Save'),
                        color: Colors.lightGreen,
                        onPressed: () => _submitOrder(),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  String _validateItemRequired(String value) {
    return value.isEmpty ? 'Item Required' : null;
  }

  String _validateItemCount(String value) {
    int _valueAsIteger = value.isEmpty ? 0 : int.tryParse(value);
    return _valueAsIteger == 0 ? 'At least one item is Required' : null;
  }

  void _submitOrder() {
    if (_formStateKey.currentState.validate()) {
      _formStateKey.currentState.save();
      print('Order Item: ${order.item}');
      print('Order Quantity: ${order.quantity}');
    }
  }
}

class Order {
  String item;
  int quantity;
}
