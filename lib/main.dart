import 'package:flutter/material.dart';

void main() => runApp(MasterbankApp());

class MasterbankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 206, 239, 255),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.blueAccent[700],
            secondary: Colors.green[900],
            background: const Color.fromARGB(255, 206, 239, 255),
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary,
          ),
          primaryColor: Colors.blueAccent[700],
          backgroundColor: const Color.fromARGB(255, 206, 239, 255),
        ),
        home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/images/logo/masterbank_main_logo.jpg'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Theme
                  .of(context)
                  .primaryColor,
              height: 100,
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Icon(
                    Icons.people,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  Text(
                    'Contacts',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}