import 'package:flutter/material.dart';
import 'package:book_store/home.dart';
import 'book.dart';
import 'detail.dart';
import 'form.dart';
import 'Register.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/form':(context) => MyForm(),
        '/home': (context) => Home(),
        '/Register':(context) => Register(),
      },
      title: 'Book App',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings settings) =>generateRoute(settings),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        platform: TargetPlatform.iOS
      ),
      // home: Home(),
      home: Home(),
    );
    
  }
  generateRoute(RouteSettings settings) {
    final path = settings.name?.split('/');
    final title = path[1];

    Book book = books.firstWhere((it) => it.title == title);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Detail(book),
    );
}
}

