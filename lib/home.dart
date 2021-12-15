import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Map<String, bool> score = {};
    final Map choices = {
      'Мен мұғалім': '-мін',
      'Сен оқушы': '-сын',
      'Сіз ана': '-сыз',
      'Сен спортшы': '-сын',
      'Сіз әнші': '-сіз',
      'Мен қыз': '-бын',
      'Сен аружан': '-сын',
      'Сіз дәрігер': '-сіз',
    };

    int seed = 0;

    int selected = -1;
    String keyOf;
    String valueOf;

    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: choices.keys.map((e) {
            return keyOf != valueOf
                ? Container()
                : ElevatedButton(
                    onPressed: () {
                      setState(() {
                        keyOf = e.toString();
                      });
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.amber),
                    child: Text(e),
                  );
          }).toList(),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: choices.values.map((e) {
              return keyOf != valueOf
                  ? Container()
                  : ElevatedButton(
                      onPressed: () {
                        setState(() {
                          valueOf = e.toString();
                        });
                      },
                      child: Text(e),
                    );
            }).toList(),
          ),
        ),
      ],
    ));
  }
}
