import 'package:flutter/material.dart';
import 'package:quan_ly_hoi/screen/auth/register/register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // create global key for from login
  final _loginFromKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Center(
      child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Form(
              key: _loginFromKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      'https://thuthuatnhanh.com/wp-content/uploads/2019/08/girl-cap-3-deo-kinh.jpg',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  // input username
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'Username/Email'),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  // input password
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'Password'),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  // button action login
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Processing Data')));
                      },
                      child: Text('Login'),
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 25),
                      child: new GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()));
                        },
                        child: Text(
                          'Đăng ký tài khoản',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                      ))
                ],
              ))),
    ));
  }
}
