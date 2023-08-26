import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  http.Client client = http.Client();

  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  bool showInfoBadCredential = false;

  // void routeToNewLoggedPage(Client client) {
  //   Navigator.of(context).push(MaterialPageRoute(
  //       builder: (context) => FirstPage(clientWithCredential: client)));
  // }

  // void checkLoginAndPassword() async {
  //   String username = usernamecontroller.text;
  //   String password = usernamecontroller.text;
  //
  //   if (checkIfStringIsNotEmpty(username) &&
  //       checkIfStringIsNotEmpty(password)) {
  //     try {
  //       Client client = await getCredential(
  //           usernamecontroller.text, passwordcontroller.text);
  //
  //       setState(() {
  //         showInfoBadCredential = false;
  //       });
  //
  //       routeToNewLoggedPage(client);
  //     } on AuthorizationException {
  //       setState(() {
  //         showInfoBadCredential = true;
  //       });
  //     }
  //   }
  //
  //   //var notes = getNotes(client);
  // }

  // void goToRegistration() {
  //   Navigator.of(context)
  //       .push(MaterialPageRoute(builder: (context) => Registration()));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Register page"),
      ),
      body: Column(
        children: [
          // Container(
          //   height: 150,
          //   width: 190,
          //   padding: const EdgeInsets.only(top: 40),
          //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(200)),
          //   child: Center(child: Image.asset('asset/images/flutter.png')),
          // ),
          Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: usernamecontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Enter valid user name'),
              )),
          Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: passwordcontroller,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter your secure password',
                ),
              )),
          // TextButton(
          //     onPressed: () {
          //       //debugPrint("Hello");
          //     },
          //     // child: const Text(
          //     //   'Forgot Password',
          //     //   style: TextStyle(color: Colors.blue, fontSize: 15),
          //     // )
          //   ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: TextButton(
                onPressed: null, //checkLoginAndPassword,
                child: const Text('Register',
                    style: TextStyle(color: Colors.white, fontSize: 25))),
          ),
          showInfoBadCredential
              ? const BadCredentials()
              : const GoodCredentials(),
        ],
      ),
    );
  }
}

class GoodCredentials extends StatelessWidget {
  const GoodCredentials({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(0),
      child: Text(""),
    );
  }
}

class BadCredentials extends StatelessWidget {
  const BadCredentials({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Text(
        "Niepoprawne dane logowania",
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      ),
    );
  }
}
