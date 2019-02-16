import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';

import '../../scoped-models/main.dart';
import '../../models/auth.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  final Map<String, dynamic> _formData = {
    'name': null,
    'phone': null,
    'password': null,
    'invitationCode': null,
    'acceptTerms': false
  };
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AuthMode _authMode = AuthMode.Login;
/*
  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
      fit: BoxFit.cover,
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
      image: AssetImage('assets/background.jpg'),
    );
  }
*/
  Widget _buildPhoneTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'شماره همراه', filled: true, fillColor: Colors.white),
      keyboardType: TextInputType.emailAddress,
      validator: (String value) {
        if (value.isEmpty) {
          return 'لطفا شماره همراه را وارد کنید';
        }
      },
      onSaved: (String value) {
        _formData['phone'] = value;
      },
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'رمز ورود', filled: true, fillColor: Colors.white),
      obscureText: true,
      validator: (String value) {
        if (value.isEmpty || value.length < 6) {
          return 'رمز ورود اشتباه است';
        }
      },
      onSaved: (String value) {
        _formData['password'] = value;
      },
    );
  }

  Widget _buildAcceptSwitch() {
    return SwitchListTile(
      value: _formData['acceptTerms'],
      onChanged: (bool value) {
        setState(() {
          _formData['acceptTerms'] = value;
        });
      },
      title: Text('Accept Terms'),
    );
  }

  Widget _buildInvitationCodeTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'کد دعوت', filled: true, fillColor: Colors.white),
      keyboardType: TextInputType.emailAddress,
      onSaved: (String value) {
        _formData['invitationCode'] = value;
      },
    );
  }

  Widget _buildNameTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'نام و نام خانوادگی',
          filled: true,
          fillColor: Colors.white),
      keyboardType: TextInputType.emailAddress,
      validator: (String value) {
        if (value.isEmpty) {
          return 'لطفا فیلد را به شکل صحیح پر کنید';
        }
      },
      onSaved: (String value) {
        _formData['name'] = value;
      },
    );
  }

  void _submitForm(Function authenticate) async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    Map<String, dynamic> successInformation;
    successInformation =
        await authenticate(_formData['name'],_formData['phone'], _formData['password'],_formData['invitationCode'],_authMode);
    print(successInformation['success']);
    if (successInformation['success']) {
      // Navigator.pushReplacementNamed(context, '/');
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(successInformation['message']),
            actions: <Widget>[
              FlatButton(
                child: Text('تلاش دوباره'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Color(0xFF005AAA)),
        backgroundColor: Colors.white70,
        title: Text(
          'ورود / عضویت',
          style: TextStyle(color: Color(0xFF005AAA)),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            //  image: _buildBackgroundImage(),
            ),
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: targetWidth,
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    _authMode == AuthMode.Signup
                        ? _buildNameTextField()
                        : Container(),
                    _buildPhoneTextField(),
                    SizedBox(
                      height: 10.0,
                    ),
                    _buildPasswordTextField(),
                    // _buildAcceptSwitch(),
                    SizedBox(
                      height: 10.0,
                    ),

                    _authMode == AuthMode.Signup
                        ? _buildInvitationCodeTextField()
                        : Container(),
                     SizedBox(
                      height: 10.0,
                    ),
                    ScopedModelDescendant<MainModel>(
                      builder: (BuildContext context, Widget child,
                          MainModel model) {
                        return model.isLoading
                            ? CircularProgressIndicator()
                            : RaisedButton(
                                color: Colors.blue,
                                textColor: Colors.white,
                                child: Text(_authMode == AuthMode.Login
                                    ? 'ورود'
                                    : 'عضویت'),
                                onPressed: () => _submitForm(model.authenticate),
                              );
                      },
                    ),    SizedBox(
                      height: 10.0,
                    ),
                    FlatButton(
                      color: Colors.green,
                      child: Text(
                          'برو به ${_authMode == AuthMode.Login ? ' ثبت نام' : 'ورود'}',style: TextStyle(color: Colors.white),),
                      onPressed: () {
                        setState(() {
                          _authMode = _authMode == AuthMode.Login
                              ? AuthMode.Signup
                              : AuthMode.Login;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
