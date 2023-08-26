import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DIFFY',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber.shade600),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'DIFFY'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _login() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => LoginPage(),
    ));
  }

  void _register() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => RegisterPage(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You pushed my button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text('Oh baby'),
            Container(
              width: 200, // Adjust the width as per your requirement
              child: FloatingActionButton(
                heroTag: 'login',
                onPressed: _login,
                tooltip: 'Login',
                child: const Text('Login'),
              ),
            ),
            const SizedBox(height: 10), // Adding some spacing between the buttons
            Container(
              width: 200, // Adjust the width as per your requirement
              child: FloatingActionButton(
                heroTag: 'register',
                onPressed: _register,
                tooltip: 'Register',
                child: const Text('Register'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

//functioning
