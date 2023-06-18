import 'package:flutter/material.dart';
class MyForm extends StatefulWidget {
@override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login form'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(hintText: 'Name'),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(hintText: 'Email'),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(hintText: 'Password'),
            ),
            SizedBox(height: 20.0),
            DropdownButton<String>(
              items: <String>['Writter', 'Transolator', 'Seller', 'Buyer'].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
              hint: Text('Select Option'),
              onChanged: (value) {},
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text('login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Register');
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}