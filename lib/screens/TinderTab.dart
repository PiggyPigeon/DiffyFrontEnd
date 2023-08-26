import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:diffy/models/PeopleList.dart';
import 'package:diffy/widgets/MatchCard.dart';

class TinderTab extends StatefulWidget {
  @override
  _TinderTabState createState() => _TinderTabState();
}

class _TinderTabState extends State<TinderTab>
    with SingleTickerProviderStateMixin {
  bool chng = true;
  bool atCenter = true;
  bool _triggerNotFound = false;
  bool _timeout = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedContainer(
          duration: Duration(milliseconds: 600),
          curve: Curves.fastLinearToSlowEaseIn,
          color: !atCenter
              ? chng ? Colors.pinkAccent.shade200 : Colors.tealAccent.shade200
              : Colors.blue.shade50,
          child: Center(
            child: _triggerNotFound
                ? !_timeout
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircularProgressIndicator(),
                          SizedBox(
                            height: ScreenUtil().setHeight(30.0),
                          ),
                          Text(
                            "Searching nearby matchings ...",
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(60.0),
                                fontWeight: FontWeight.w200,
                                color: Colors.grey.shade600),
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: ScreenUtil().setHeight(550.0),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: Image(
                                width: ScreenUtil().setWidth(400),
                                height: ScreenUtil().setWidth(400),
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('assets/images/abhishekProfile.JPG')),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(40.0),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(60.0)),
                            child: Text("There is no one new around you ...",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    wordSpacing: 1.2,
                                    fontSize: ScreenUtil().setSp(55.0),
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey.shade600)),
                          )
                        ],
                      )
                : Container(),
          ),
        ),
        Positioned(
          bottom: 0.0,
          child: Container(
            height: ScreenUtil().setWidth(220.0),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(15.0)),
                  height: ScreenUtil().setHeight(80.0),
                  width: ScreenUtil().setHeight(80.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, 0.0), color: Colors.grey),
                        BoxShadow(
                            offset: Offset(1.0, 1.0),
                            color: Colors.grey,
                            blurRadius: 5.0),
                        BoxShadow(
                            offset: Offset(-1.0, -1.0),
                            color: Colors.white,
                            blurRadius: 10.0)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60.0)),
                  child: ShaderMask(
                      child: Image(
                          image: AssetImage('assets/images/round.png')),
                      blendMode: BlendMode.srcATop,
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                            colors: [
                              Colors.amber.shade700,
                              Colors.amber.shade400
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [0.0, 1.0]).createShader(bounds);
                      }),
                ),
                Container(
                  padding: EdgeInsets.all(ScreenUtil().setSp(30.0)),
                  height: ScreenUtil().setHeight(110.0),
                  width: ScreenUtil().setHeight(110.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, 0.0), color: Colors.grey),
                        BoxShadow(
                            offset: Offset(1.0, 1.0),
                            color: Colors.grey,
                            blurRadius: 5.0),
                        BoxShadow(
                            offset: Offset(-1.0, -1.0),
                            color: Colors.white,
                            blurRadius: 10.0)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60.0)),
                  child: ShaderMask(
                      child: Image(
                        image: AssetImage('assets/images/closeRounded.png'),
                      ),
                      blendMode: BlendMode.srcATop,
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                            colors: [
                              Theme.of(context).splashColor,
                              Theme.of(context).primaryColor
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [0.0, 1.0]).createShader(bounds);
                      }),
                ),
                Container(
                  height: ScreenUtil().setHeight(80.0),
                  width: ScreenUtil().setHeight(80.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, 0.0), color: Colors.grey),
                        BoxShadow(
                            offset: Offset(1.0, 1.0),
                            color: Colors.grey,
                            blurRadius: 5.0),
                        BoxShadow(
                            offset: Offset(-1.0, -1.0),
                            color: Colors.white,
                            blurRadius: 10.0)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60.0)),
                  child: ShaderMask(
                      child: Icon(
                        Icons.star,
                        size: ScreenUtil().setHeight(65.0),
                      ),
                      blendMode: BlendMode.srcATop,
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                            colors: [
                              Colors.blue.shade600,
                              Colors.blue.shade300
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [0.0, 1.0]).createShader(bounds);
                      }),
                ),
                Container(
                  padding: EdgeInsets.all(ScreenUtil().setSp(30.0)),
                  height: ScreenUtil().setHeight(110.0),
                  width: ScreenUtil().setHeight(110.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, 0.0), color: Colors.grey),
                        BoxShadow(
                            offset: Offset(1.0, 1.0),
                            color: Colors.grey,
                            blurRadius: 5.0),
                        BoxShadow(
                            offset: Offset(-1.0, -1.0),
                            color: Colors.white,
                            blurRadius: 10.0)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60.0)),
                  child: ShaderMask(
                      child: Icon(
                        Icons.favorite,
                        size: ScreenUtil().setHeight(65.0),
                      ),
                      blendMode: BlendMode.srcATop,
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                            colors: [
                              Colors.tealAccent.shade700,
                              Colors.tealAccent.shade200
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [0.0, 1.0]).createShader(bounds);
                      }),
                ),
                Container(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(15.0)),
                  height: ScreenUtil().setHeight(80.0),
                  width: ScreenUtil().setHeight(80.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, 0.0), color: Colors.grey),
                        BoxShadow(
                            offset: Offset(1.0, 1.0),
                            color: Colors.grey,
                            blurRadius: 5.0),
                        BoxShadow(
                            offset: Offset(-1.0, -1.0),
                            color: Colors.white,
                            blurRadius: 10.0)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60.0)),
                  child: ShaderMask(
                      child: Image(
                          image: AssetImage('assets/images/lighting.png')),
                      blendMode: BlendMode.srcATop,
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                            colors: [
                              Colors.purple.shade500,
                              Colors.purple.shade200
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [0.0, 1.0]).createShader(bounds);
                      }),
                )
              ],
            ),
          ),
        ),
        // TODO swipe thing
        // new Align(
        //     alignment: Alignment.topCenter,
        //     child: new TinderSwapCard(
        //       animDuration: 800,
        //       orientation: AmassOrientation.TOP,
        //       totalNum: peoples.length,
        //       stackNum: 3,
        //       swipeEdge: 10.0,
        //       maxWidth: MediaQuery.of(context).size.width - 10.0,
        //       maxHeight: MediaQuery.of(context).size.height * 0.74,
        //       minWidth: MediaQuery.of(context).size.width - 50.0,
        //       minHeight: MediaQuery.of(context).size.height * 0.73,
        //       cardBuilder: (context, index) {
        //         return peoples[index];
        //       },
        //       cardController: _cardController,
        //       swipeUpdateCallback:
        //           (DragUpdateDetails details, Alignment align) {
        //         /// Get swiping card's alignment
        //         if (align.x < 0) {
        //           //Card is LEFT swiping
        //           print("Left align " + align.x.toString());
        //           setState(() {
        //             if (align.x < -1) atCenter = false;
        //             chng = true;
        //           });
        //         } else if (align.x > 0) {
        //           //Card is RIGHT swiping
        //           print("right align " + align.x.toString());
        //           setState(() {
        //             if (align.x > 1) atCenter = false;
        //             chng = false;
        //           });
        //         }
        //       },
        //       swipeCompleteCallback:
        //           (CardSwipeOrientation orientation, int index) {
        //         /// Get orientation & index of swiped card!
        //         setState(() {
        //           atCenter = true;
        //           if (index == peoples.length - 1) {
        //             _triggerNotFound = true;
        //             Future.delayed(Duration(seconds: 5), () {
        //               _timeout = true;
        //               setState(() {});
        //             });
        //           }
        //         });
        //       },
        //     )),
      ],
    );
  }

  double abs(double x) {
    if (x < 0) return x * -1;
    return x;
  }
}
