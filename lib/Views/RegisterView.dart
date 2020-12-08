
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: RegisteViewState());  }

}

class RegisteViewState extends StatefulWidget {
  @override
  _RegisterViewState createState() => _RegisterViewState ();

}

class _RegisterViewState  extends State<RegisteViewState>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.lightBlue, Colors.greenAccent])),
          padding: EdgeInsets.all( 60.0),
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,


                        ),
                      ),
                    ),
                    InputWithIcon(
                      icon: Icons.drive_file_rename_outline,
                      hint: "Name and Last Name...",
                    ),
                    SizedBox(height: 5,),
                    InputWithIcon(
                      icon: Icons.email,
                      hint: "Enter Email...",
                    ),
                    SizedBox(height: 5,),
                    InputWithIcon(
                      icon: Icons.vpn_key,
                      hint: "Enter Password...",
                    ),
                    SizedBox(height: 5,),
                    InputWithIcon(
                      icon: Icons.payment_sharp,
                      hint: "CIN / Passport ...",
                    ),
                    SizedBox(height: 5,),
                    InputWithIcon(
                      icon: Icons.payment_sharp,
                      hint: "Phone Number ...",
                    )
                  ],
                ),
                SizedBox(height: 5,),

                Column(
                  children: <Widget>[

                    GestureDetector(
                      onTap: () {
                        setState(() {
                        });
                      },
                      child: OutlineBtn(
                        btnText: "Create Account",
                      ),
                    )
                  ],
                ),
              ],
            ),
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
      margin: EdgeInsets.all(32),
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
          color:  Colors.white,
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.lightBlue, Colors.greenAccent])
      ),
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

