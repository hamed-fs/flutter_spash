import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
    );
  }
}

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          duration: Duration(seconds: 2),
          opacity: _visible ? 1.0 : 0.0,
          child: Image.asset(
            'assets/splash.png',
            height: 256,
            width: 256,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(_visible ? Icons.visibility_off : Icons.visibility),
        onPressed: () => setState(() => _visible = !_visible),
      ),
    );
  }
}
