import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.red,
      scaffoldBackgroundColor: Colors.black45
    ),
    initialRoute: '/',
    routes: {
      '/':(context)=>MyApp(),
      '/second':(context)=>SecondPage(),
      '/third':(context)=>ThirdPage(),
    },
  )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Page'),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: ElevatedButton(
              child: Text('Next Page',
                style: TextStyle(
                color: Colors.white,
                  backgroundColor: Colors.red,
              )),
            onPressed: (){
                Navigator.pushNamed(context, '/second');
            },
          ),
        )
      );

  }
}
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
            title: Text('Second Page'),
          ),
          body: Center(
            child: ElevatedButton(
              child: Text('Next Page',
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.red,
              ),),
              onPressed: (){
                Navigator.pushNamed(context, '/third');
              },
            ),
          )
      );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Third Page'),
          ),
          body: Center(
            child: ElevatedButton(
              child: Text('Back to First Page',
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.red,
              ),),
              onPressed: (){
                Navigator.pushNamed(context, '/');
              },
            ),
          )
      );
  }
}