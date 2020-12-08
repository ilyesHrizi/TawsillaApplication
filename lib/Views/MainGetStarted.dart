import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MainGetStarted extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return MaterialApp(home: GetStartedView());  }


}

class GetStartedView extends StatefulWidget{
  @override
  _GetStartedViewState createState() => _GetStartedViewState();
}
class _GetStartedViewState extends State<GetStartedView>
{
  int _pageState = 0 ;
  var _backgroundColor = Colors.white;
  var _headingColor = Color(0xFFB40284A);
  double _headingTop = 100;
  double _loginWidth = 0;
  double _loginHeight = 0;
  double _loginOpacity = 1;

  double _loginYOffset = 0;
  double _loginXOffset = 0;
  double _registerYOffset = 0;
  double _registerHeight = 0;

  double windowWidth = 0;
  double windowHeight = 0;

  bool _keyboardVisible = false;
  @override
  void initState() {
    super.initState();


}
  @override
  Widget build(BuildContext context) {
    windowHeight = MediaQuery.of(context).size.height;
    windowWidth = MediaQuery.of(context).size.width;

    _loginHeight = windowHeight - 270;
    _registerHeight = windowHeight - 270;

    switch(_pageState) {
      case 0:
        _backgroundColor = Colors.white;
        _headingColor = Color(0xFFB40284A);

        _headingTop = 100;

        _loginWidth = windowWidth;
        _loginOpacity = 1;

        _loginYOffset = windowHeight;
        _loginHeight = _keyboardVisible ? windowHeight : windowHeight - 270;

        _loginXOffset = 0;
        _registerYOffset = windowHeight;
        break;
      case 1:
        _backgroundColor = Color(0xFFBD34C59);
        _headingColor = Colors.white;

        _headingTop = 90;

        _loginWidth = windowWidth;
        _loginOpacity = 1;

        _loginYOffset = _keyboardVisible ? 40 : 270;
        _loginHeight = _keyboardVisible ? windowHeight : windowHeight - 270;

        _loginXOffset = 0;
        _registerYOffset = windowHeight;
        break;
      case 2:
        _backgroundColor = Color(0xFFBD34C59);
        _headingColor = Colors.white;

        _headingTop = 80;

        _loginWidth = windowWidth - 40;
        _loginOpacity = 0.7;

        _loginYOffset = _keyboardVisible ? 30 : 240;
        _loginHeight = _keyboardVisible ? windowHeight : windowHeight - 240;

        _loginXOffset = 20;
        _registerYOffset = _keyboardVisible ? 55 : 270;
        _registerHeight = _keyboardVisible ? windowHeight : windowHeight - 270;
        break;
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(
            milliseconds: 1000
          ),
          curve: Curves.fastLinearToSlowEaseIn,        color : _backgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        setState((){
                          _pageState = 0 ;
                        });
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            AnimatedContainer(
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: Duration(
                                milliseconds: 1000
                              ),
                              margin: EdgeInsets.only(top : _headingTop),
                              child: Text (
                                "Tawsila.tn"
                                    ,
                                style:TextStyle(
                                  color: _headingColor,
                                  fontSize: 30
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(20),
                              padding: EdgeInsets.symmetric(
                                horizontal: 32
                              ),
                              child: Text(
                                "Tawsila.tn your best application for travel ",
                                textAlign: TextAlign.center,
                              style: TextStyle( color : _headingColor,
                                fontSize: 16)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 32
                      ),
                      child: Center(
                        child: Image.asset("assets/images.jpg")
                      ),
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            Get.toNamed('/LoginView');

                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(32),
                          padding: EdgeInsets.all(20),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color:  Color(0xFFB40284A),
                            borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [Colors.lightBlue, Colors.greenAccent])
                          ),
                          child : Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                              ),
                            ),
                          )
                        ),
                      ),
                    )
                  ],
                ),
          ),


        ],
      ),
    );
  }

}

