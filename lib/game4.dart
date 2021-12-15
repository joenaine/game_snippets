import 'package:flutter/material.dart';
import 'package:scrollable_draggable/wordModel.dart';

class Game4 extends StatefulWidget {
  @override
  _Game4State createState() => _Game4State();
}

class _Game4State extends State<Game4> {
  List<TextEditingController> _controller =
      List.generate(10, (i) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    List<WordModel> _models = [];
    List<WordModel> _models2 = [];

    _models = [
      WordModel(name: 'Сен оқушы', value: 'емессің'),
      WordModel(name: 'Сіз дәрігер', value: 'емессіз'),
      WordModel(name: 'Мен студент', value: 'емеспін'),
      WordModel(name: 'Ол бесте', value: 'емес'),
      WordModel(name: 'Сен қалада', value: 'емессің'),
      WordModel(name: 'Сіз Алматыда', value: 'емессіз'),
    ];
    _models2 = List<WordModel>.from(_models);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: _models.map((e) {
                          return Container(
                            height: 70,
                            width: 200,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                e.name,
                                style: TextStyle(fontSize: 26),
                              ),
                            ),
                          );
                        }).toList()),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: _models2
                            .asMap()
                            .map((i, item) => MapEntry(
                                i,
                                _controller[i].text == item.value
                                    ? Container(
                                        height: 70,
                                        width: 200,
                                        child: Icon(
                                          Icons.check,
                                          size: 30,
                                          color: Colors.green,
                                        ),
                                      )
                                    : Container(
                                        height: 70,
                                        width: 200,
                                        child: TextField(
                                          controller: _controller[i],
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                              suffixIcon: IconButton(
                                                onPressed: () {
                                                  _controller[i].clear();
                                                },
                                                icon: Icon(Icons.cancel),
                                              ),
                                              alignLabelWithHint: true,
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              labelStyle:
                                                  TextStyle(fontSize: 18)),
                                          style: TextStyle(fontSize: 26),
                                        ),
                                      )))
                            .values
                            .toList()),
                  ],
                ),
              ),
              MaterialButton(
                  padding: EdgeInsets.all(10),
                  color: Colors.amber,
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    'Проверить',
                    style: TextStyle(fontSize: 20),
                  )),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
