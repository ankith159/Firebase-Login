import 'package:firebase_core/firebase_core.dart';
import 'package:firebaselogin/authenticate/authenticate.dart';
import 'package:firebaselogin/authenticate/tabpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';
import 'services/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: Wrapper(),
  ));
}

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<LoginUser>.value(
      value: AuthService().fireUser,
      builder: (context, child) {
        final loginuser = Provider.of<LoginUser>(context);
        if (loginuser == null) {
          return Authenticate();
        } else {
          return TabPage();
        }
      },
      initialData: null,
    );
  }
}
