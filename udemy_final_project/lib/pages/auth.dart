import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _emailValue;
  String _passwordValue;
  bool _acceptTerms = false;

  DecorationImage _buildBackGroundImage() {
    return DecorationImage(
      fit: BoxFit.cover,
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
      image: AssetImage('assets/bg.jpg'),
    );
  }

  Widget _buildEmailTextField() {
    return TextField(
        decoration: InputDecoration(labelText: 'E-mail'),
        keyboardType: TextInputType.emailAddress,
        onChanged: (String value) {
          setState(() {
            value = _emailValue;
          });
        });
  }

  Widget _buildPasswordTextField() {
    return TextField(
        decoration: InputDecoration(labelText: 'Password'),
        obscureText: true,
        onChanged: (String value) {
          setState(() {
            value = _passwordValue;
            // _passwordValue=value;
          });
        });
  }

  Widget _buildSwitchCase() {
    return SwitchListTile(
      value: _acceptTerms,
      onChanged: (bool value) {
        setState(() {
          _acceptTerms = value;
        });
      },
      title: Text("Accept Terms"),
    );
  }

  void _submitForm() {
    print(_emailValue);
    print(_passwordValue);
    Navigator.pushReplacementNamed(context, '/products');
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double tragetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;
    return Scaffold(
        appBar: AppBar(
          title: Text('login'),
        ),
        body: Container(
            decoration: BoxDecoration(
              image: _buildBackGroundImage(),
            ),
            padding: EdgeInsets.all(10.0),
            child: Center(
            //  alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Container(
                  width: tragetWidth,
                  child: Column(
                    children: <Widget>[
                      _buildEmailTextField(),
                      _buildPasswordTextField(),
                      _buildSwitchCase(),

                      //   value: _acceptTerms,
                      //onChanged: (bool value){},
                      //title:Text('Accept Terms'),

                      SizedBox(
                        height: 10.0,
                      ),
                      MaterialButton(
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        child: Text('Login'),
                        onPressed: _submitForm,
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}




















/*import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
return _AuthPageState();    
  }
}

class _AuthPageState extends State<AuthPage>{
  String _emailValue;
  String _passwordValue;
  bool _acceptTerms =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        ),
        body: Container(
          margin: EdgeInsets.,
        ),
    );
  }
  
}*/