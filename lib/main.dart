import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double tamanhoBox = 100.00;
  Color corSobra = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Box Decorated"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: DecoratedBox(
                    child: FlutterLogo(
                      size: tamanhoBox,

                    ),
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: corSobra,
                          offset: Offset(3, 3),
                          blurRadius: 10.0,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                          Radius.circular(5.0) //         <--- border radius here
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: DecoratedBox(
                  child: FlutterLogo(
                    size: tamanhoBox,
                  ),
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: corSobra,
                        offset: Offset(3, 3),
                        blurRadius: 10.0,
                      ),
                    ],
                    color: Colors.white,
                    shape: BoxShape.circle, // nao pode ter o border radius dai

                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text(
                  "diminui",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    tamanhoBox = 100;
                    corSobra = Colors.green;
                  });
                },
              ),
              RaisedButton(
                child: Text(
                  "Aplica",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    tamanhoBox = 150;
                    corSobra = Colors.black;
                  });
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
