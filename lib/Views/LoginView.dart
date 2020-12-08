import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: LoginViewState());
  }
  



}

class LoginViewState extends StatefulWidget{
  @override
  _LoginViewState  createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginViewState> {


  double _loginWidth = 0;
  double _loginHeight = 0;
  double _loginOpacity = 1;
  double _loginYOffset = 0;
  double _loginXOffset = 0;
  double windowWidth = 0;
  double windowHeight = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return Scaffold(
  body:  Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.lightBlue, Colors.greenAccent])),
    padding: EdgeInsets.all( 30.0),
    child: SizedBox(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                InputWithIcon(
                  icon: Icons.email,
                  hint: "Enter Email...",
                ),
                SizedBox(height: 20,),
                InputWithIcon(
                  icon: Icons.vpn_key,
                  hint: "Enter Password...",
                )
              ],
            ),
            SizedBox(height: 20,),

            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                          Get.toNamed('/ ');
                    });
                  },
                  child : PrimaryButton(
                    btnText: "Login",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Get.toNamed('/RegisterView');

                    });
                  },
                  child: OutlineBtn(
                    btnText: "Create New Account",
                  ),
                )
              ],
            ),
          ],
        ),
    ),
  ),

);
  }
}

class InputWithIcon extends StatefulWidget {
  final IconData icon;
  final String hint;
  InputWithIcon({this.icon, this.hint});

  @override
  _InputWithIconState createState() => _InputWithIconState();
}

class _InputWithIconState extends State<InputWithIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(19.0),
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon : Icon(widget.icon),
            hintText: widget.hint,
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.only(
                left: 50.0, bottom: 8.0, top: 8.0),
            focusedBorder: OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.white),
              borderRadius: new BorderRadius.circular(25.7),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: new BorderSide(color: Colors.white),
              borderRadius: new BorderRadius.circular(25.7),
            ),
          ),

        ),
      ),
    );
  }
}
class PrimaryButton extends StatefulWidget {
  final String btnText;
  PrimaryButton({this.btnText});

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFFB40284A),
          borderRadius: BorderRadius.circular(50)
      ),
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(
          widget.btnText,
          style: TextStyle(
              color: Colors.white,
              fontSize: 16
          ),
        ),
      ),
    );
  }
}

class OutlineBtn extends StatefulWidget {
  final String btnText;
  OutlineBtn({this.btnText});

  @override
  _OutlineBtnState createState() => _OutlineBtnState();
}

class _OutlineBtnState extends State<OutlineBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: Color(0xFFB40284A),
              width: 2
          ),
          borderRadius: BorderRadius.circular(50)
      ),
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(
          widget.btnText,
          style: TextStyle(
              color: Color(0xFFB40284A),
              fontSize: 16
          ),
        ),
      ),
    );
  }
}

