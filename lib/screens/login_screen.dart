import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? _emailError;
  String? _passwordError;
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = _tapGestureAction;
    // _tapGestureRecognizer.onTap = _tapGestureAction;
  }

  @override
  void dispose() {
    _passwordTextController.dispose();
    _emailTextController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  void _tapGestureAction() {
    print(' Tap Gesture');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'LOGIN',
          style: GoogleFonts.aBeeZee(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black87),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back...",
              style: GoogleFonts.aBeeZee(
                  fontSize: 23, fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "Enter email & password to login",
                style: GoogleFonts.aclonica(
                  fontSize: 14,
                  color: Colors.black45,
                ),
              ),
            ),
            TextField(
                controller: _emailTextController,
                style: GoogleFonts.aBeeZee(),
                //*************************************************
                onTap: () => print('Clicked'),
                onChanged: (String value) => print('change $value'),
                //  **************************************************
                textAlign: TextAlign.start,
                textDirection: TextDirection.ltr,
                textCapitalization: TextCapitalization.words,
                textAlignVertical: TextAlignVertical.center,
                //  **********************************************
                textInputAction: TextInputAction.send,
                onSubmitted: (String value) => print('send $value'),
                //  **************************************************
                // enabled: false,
                // readOnly: false, //to read word oly..
                //  **************************************************
                cursorColor: Colors.red.shade900,
                cursorWidth: 3,
                cursorRadius: Radius.circular(25),
                // showCursor: false,
                //  ************************************************
                //   obscureText: true,
                //   obscuringCharacter: '☻',
                //  ***********************************************
                keyboardType: TextInputType.emailAddress,
                //  *************************************************
                // maxLength: 30,
                // buildCounter: (
                //   BuildContext context, {
                //   required int currentLength,
                //   required int? maxLength,
                //   required bool isFocused,
                // }) {
                //   return isFocused
                //       ? Text(
                //           '$currentLength :: $maxLength ',
                //         )
                //       : null;
                // },
                //***************************************************
                // minLines: 1,
                // maxLines: 4,
                // //********************************************
                minLines: null,
                maxLines: null,
                expands: true,
                //****************************
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10),
                  constraints: BoxConstraints(
                    maxHeight: _emailError != null ? 70 : 50,
                  ),
                  //************************************
                  // contentPadding: EdgeInsets.zero,
                  //**********************************
                  hintText: 'Email',
                  // hintStyle:
                  // hintMaxLines:
                  // hintTextDirection:
                  //  **************************************************
                  // counterText: '',// to hide maxlength
                  // labelText: 'Email',
                  // labelStyle: GoogleFonts.actor(color: Colors.grey),
                  // floatingLabelStyle: GoogleFonts.adventPro(color: Colors.black87),
                  // floatingLabelBehavior: FloatingLabelBehavior.always
                  //  ***************************************************
                  prefixIcon: Icon(Icons.email),
                  // prefixText: 'em-',
                  // prefixStyle:TextStyle(color: Colors.grey)
                  //  ********************************************************
                  // suffixIcon: IconButton(icon:const Icon(Icons.send),onPressed: (){}),
                  // suffixText: 'vaild',
                  // helperText: 'EX : email@email.com',
                  // helperStyle: TextStyle(fontWeight: FontWeight.w600),
                  //  *************************************************
                  //   fillColor: Colors.red,
                  // filled: true,
                  //  **************************************
                  //   border: InputBorder.none
                  // enabledBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.green),
                  // ),
                  // focusedBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.pink))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue)),
                  //  ***************************************************
                  errorText: _emailError,
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red)),
                  //  ****************************************
                )),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _passwordTextController,
              obscureText: true,
              // minLines: null,
              // maxLines: null,
              // expands: true,
              style: GoogleFonts.aBeeZee(),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                constraints: BoxConstraints(
                  maxHeight: _passwordError != null ? 70 : 50,
                ),
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                errorText: _passwordError,
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red)),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red)),
                //  ****************************************
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                onPressed: () => _performLogin(),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(
                  'Login',
                  style: GoogleFonts.aBeeZee(
                      fontSize: 19, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
                child: RichText(
              text: TextSpan(
                  children: [
                    TextSpan(
                      recognizer: _tapGestureRecognizer,
                      text: ' Creat now',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                          decoration: TextDecoration.underline),
                    )
                  ],
                  text: 'Don\'t have an account',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            )),
          ],
        ),
      ),
    );
  }

  void _performLogin() {
    if (_checkData()) {
      _login();
    }
  }

  bool _checkData() {
    setState(() {
      _emailError = _emailTextController.text.isEmpty ? 'Einter emaill' : null;
      _passwordError =
          _passwordTextController.text.isEmpty ? 'Einter password' : null;
    });
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      return true;
    }

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text(
        'Enter required data',
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
      ),
      backgroundColor: Colors.red,
      elevation: 4,
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: 1),
      dismissDirection: DismissDirection.horizontal,
    ));
    return false;
  }

  void _login() {
    Navigator.pushReplacementNamed(context, '/buttom_bar_screen');
  }
}
