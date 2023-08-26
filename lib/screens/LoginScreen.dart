import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:diffy/models/tinder_clone_icons.dart';
import 'package:diffy/screens/PhoneNumber.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Theme.of(context).splashColor,
                    Theme.of(context).secondaryHeaderColor,
                    Theme.of(context).primaryColor
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  stops: [0.0, 0.35, 1.0])),
          child: Column(
            children: <Widget>[
              Expanded(
                  flex: 5,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Tinder_clone.iconfinder_338_tinder_logo_4375488__1_,
                        color: Colors.white,
                        size: ScreenUtil().setSp(50.0),
                      ),
                      SizedBox(width: ScreenUtil().setWidth(10.0)),
                      Text(
                        "diffy",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(50.0),
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      )
                    ],
                  ))),
              Expanded(
                  flex: 8,
                  child: Padding(
                    padding: EdgeInsets.all(ScreenUtil().setWidth(50.0)),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'By clicking "Log in",you agree with our Terms.\n Learn how we process your data in our Privacy  Policy and Cookies Policy',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: ScreenUtil().setHeight(50.0)),
                        Container(
                          width: double.infinity,
                          height: ScreenUtil().setHeight(25.0),
                          child: ElevatedButton(
                            // shape: new RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(90.0)),
                            // color: Colors.white,
                            // elevation: 0.0,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          PhoneNumberScreen()));
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "LOG IN WITH PHONE NUMBER",
                                  style: TextStyle(
                                      color: Colors.grey, wordSpacing: 1.2),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: ScreenUtil().setHeight(30.0)),
                        Container(
                          width: double.infinity,
                          height: ScreenUtil().setHeight(25.0),
                          child: ElevatedButton(
                            // shape: new RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(90.0)),
                            // color: Colors.white,
                            // elevation: 0.0,
                            onPressed: () {
                              var snkBAr = const SnackBar(
                                  content:
                                      Text("You can add this feature dev 😍"));
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "LOG IN WITH FACEBOOK",
                                  style: TextStyle(
                                      color: Colors.grey, wordSpacing: 1.2),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: ScreenUtil().setHeight(70.0)),
                        Text(
                          "Trouble logging in?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(50.0),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}
