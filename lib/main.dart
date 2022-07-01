import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Lorem';
  int bottomNavbarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Application'),
        ),
        body: Center(
          child: (bottomNavbarIndex == 0)
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          onPrimary: Colors.pink.shade100,
                        ),
                        onPressed: () {
                          setState(() {
                            buttonName =
                                (buttonName == 'Lorem') ? 'Ipsum' : 'Lorem';
                          });
                        },
                        child: Text(buttonName),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            buttonName =
                                (buttonName == 'Lorem') ? 'Ipsum' : 'Lorem';
                          });
                        },
                        child: Text(buttonName),
                      ),
                    ],
                  ),
                )
              : Image.asset('images/aurora.jpg'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
          ],
          currentIndex: bottomNavbarIndex,
          onTap: (int index) {
            setState(() {
              bottomNavbarIndex = index;
            });
          },
        ),
      ),
    );
  }
}
