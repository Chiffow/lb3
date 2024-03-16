import 'package:flutter/material.dart';
import 'dart:math';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> texts = ['Хорошее','Плохое','Никакое','Еще не понял:)'];
  String displayText = 'Какое у меня сегодня настроение?';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Обо мне:',
              style: TextStyle(
                fontSize: 40,
              ),),
            Image.asset("assets/img/kot.jpg"),
            const Text(
              'ФИО: Комышенко Илья Сергеевич',
              style: TextStyle(
                fontSize: 25,
              ),),
            const Text(
              'Дата рождения: 25 марта 2001',
              style: TextStyle(
                fontSize: 25,
              ),),
            const Text(
              'Увлечения: Футбол, Хоккей',
              style: TextStyle(
                fontSize: 25,
              ),),
            const Text(
              'Семейное положение: Не женат',
              style: TextStyle(
                fontSize: 25,
              ),),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                displayText,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                displayText = texts[Random().nextInt(texts.length)];
              });
            }, child: Text("Узнай"),),
          ],

        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
