import 'package:flutter/material.dart';
import 'package:scrollable_draggable/wordModel.dart';

class Game3 extends StatefulWidget {
  @override
  _Game3State createState() => _Game3State();
}

class _Game3State extends State<Game3> {
  List<WordModel> words = [];
  List<WordModel> words2 = [];

  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  TextEditingController _controller4 = TextEditingController();
  TextEditingController _controller5 = TextEditingController();
  TextEditingController _controller6 = TextEditingController();

  bool value1 = false,
      value2 = false,
      value3 = false,
      value4 = false,
      value5 = false,
      value6 = false;

  int score;

  initGame() {
    score = 0;
    words = [
      WordModel(value: 'Сен оқушы', name: 'емессің'),
      WordModel(value: 'Сіз дәрігер', name: 'емессіз'),
      WordModel(value: 'Мен студент', name: 'емеспін'),
      WordModel(value: 'Ол бесте', name: 'емес'),
      WordModel(value: 'Сен қалада', name: 'емессің'),
      WordModel(value: 'Сіз Алматыда', name: 'емессіз'),
    ];
    words2 = List<WordModel>.from(words);
  }

  @override
  void initState() {
    super.initState();
    initGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: words.map((item) {
                    return Container(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        item.value,
                        style: TextStyle(fontSize: 24),
                      ),
                    );
                  }).toList(),
                ),
                Column(
                  children: [
                    _sizedBox(_controller1),
                    _sizedBox(_controller2),
                    _sizedBox(_controller3),
                    _sizedBox(_controller4),
                    _sizedBox(_controller5),
                    _sizedBox(_controller6),
                  ],
                ),
                Column(
                  children: [
                    if (value1 != null)
                      value1 == true ? Icon(Icons.check) : Icon(Icons.cancel),
                    if (value2 != null)
                      value2 == true ? Icon(Icons.check) : Icon(Icons.cancel),
                    if (value3 != null)
                      value3 == true ? Icon(Icons.check) : Icon(Icons.cancel),
                    if (value4 != null)
                      value4 == true ? Icon(Icons.check) : Icon(Icons.cancel),
                    if (value5 != null)
                      value5 == true ? Icon(Icons.check) : Icon(Icons.cancel),
                    if (value6 != null)
                      value6 == true ? Icon(Icons.check) : Icon(Icons.cancel),
                  ],
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {
                _result();
              },
              color: Theme.of(context).primaryColor,
              child: Text('Проверить'),
            ),
          ],
        ),
      ),
    );
  }

  void _result() {
    if (_controller1.text == 'емессің')
      setState(() {
        value1 = true;
      });
    if (_controller2.text == 'емессің')
      setState(() {
        value2 = true;
      });
    if (_controller3.text == 'емессің')
      setState(() {
        value3 = true;
      });
    if (_controller4.text == 'емессің')
      setState(() {
        value4 = true;
      });
    if (_controller5.text == 'емессің')
      setState(() {
        value5 = true;
      });
    if (_controller6.text == 'емессің')
      setState(() {
        value6 = true;
      });
  }

  SizedBox _sizedBox(controller) {
    return SizedBox(
      width: 80,
      height: 55,
      child: TextField(
        textAlign: TextAlign.center,
        controller: controller,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 4),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}
