import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:diffy/HomePage.dart';

class PhoneNumberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(icon:
        Icon(Icons.arrow_back,color : Theme.of(context).primaryColor)
        , onPressed: (){
          Navigator.pop(context);
        }),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: ScreenUtil().setWidth(50.0),
            right: ScreenUtil().setWidth(50.0)),
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 5,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "My number is",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(100.0),
                            fontWeight: FontWeight.w600,
                            color: Colors.black54),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(80.0),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            cursorColor: Theme.of(context).primaryColor,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                ),
                                helperText: 'Country code'),
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(20.0),
                        ),
                        Expanded(
                            flex: 7,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              cursorColor: Theme.of(context).primaryColor,
                              decoration: InputDecoration(
                                  helperText: 'Phone number'),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(60.0),
                    ),
                    Text(
                      'When you tap "Continue",Tinder will send a text a with verification code. Message and data rates may apply.\nThe verified phone number can be used to log in. Learn what happens when your number changes.',
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(37.0),
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(40.0),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90.0),
                            gradient: LinearGradient(
                                colors: [
                                  Theme.of(context).splashColor,
                                  Theme.of(context).secondaryHeaderColor,
                                  Theme.of(context).primaryColor
                                ],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                                stops: [0.0, 0.1, 1.0])),
                        width: double.infinity,
                        height: ScreenUtil().setHeight(110.0),
                        child: Center(
                          child: Text(
                            "CONTINUE",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.w600,
                                fontSize: ScreenUtil().setSp(45.0)),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
