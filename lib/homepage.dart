import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  void addcount() {
    setState(() {
      count++;
    });
  }

  void minimize() {
    setState(() {
      count--;
    });
  }

  void clear() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Counter Ui'),
      ),
      body: Center(
        child: Container(
          width: 270,
          height: 270,
          decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 14, 14, 14)),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(60)),
          child: Stack(
            children: [
              Positioned(
                  left: 100,
                  top: 9,
                  child: Text('Counter',
                      style: TextStyle(
                        fontSize: 20,
                      ))),
              Positioned(
                top: 40,
                left: 45,
                child: Container(
                  height: 90,
                  width: 180,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Color.fromARGB(255, 6, 87, 173),
                      borderRadius: BorderRadius.circular(60)),
                ),
              ),
              Positioned(
                top: 50,
                left: 60,
                child: Container(
                  height: 70,
                  width: 150,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 233, 18, 18)),
                      color: Color.fromARGB(255, 206, 211, 216),
                      borderRadius: BorderRadius.circular(60)),
                  child: Center(
                      child: Text(
                    '${count}',
                    style: TextStyle(fontSize: 40),
                  )),
                ),
              ),
              Positioned(
                bottom: 50,
                left: 60,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Color.fromARGB(255, 6, 87, 173),
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                      onPressed: () {
                        addcount();
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
              ),
              Positioned(
                bottom: 40,
                right: 60,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Color.fromARGB(255, 6, 87, 173),
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                      onPressed: () {
                        minimize();
                      },
                      icon: Icon(
                        Icons.minimize,
                        color: Colors.white,
                      )),
                ),
              ),
              Positioned(
                left: 20,
                top: 20,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Color.fromARGB(255, 6, 87, 173),
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                      onPressed: () {
                        clear();
                      },
                      icon: Icon(
                        Icons.clear,
                        color: Colors.white,
                        size: 9,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
