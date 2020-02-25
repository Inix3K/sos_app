import 'package:flutter/material.dart';
import 'package:sos_app/authentication.dart';
import 'package:sos_app/drawer.dart';

class ViewFeedbackPage extends StatefulWidget {
  ViewFeedbackPage({Key key, this.auth, this.userId, this.logoutCallback})
      : super(key: key);

  final BaseAuth auth;
  final VoidCallback logoutCallback;
  final String userId;

  @override
  State<StatefulWidget> createState() => new _ViewFeedbackPageState();
}

class _ViewFeedbackPageState extends State<ViewFeedbackPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  signOut() async {
    try {
      await widget.auth.signOut();
      widget.logoutCallback();
    } catch (e) {
      print(e);
    }
  }

  Widget showProfile() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
      child:
          new Text("This is where one can view feedback submitted for them."),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('SOS Application'),
        actions: <Widget>[
          new FlatButton(
              child: new Text('Logout',
                  style: new TextStyle(fontSize: 17.0, color: Colors.white)),
              onPressed: signOut)
        ],
      ),
      drawer: MyDrawer("ViewFeedback"),
      body: Stack(
        children: <Widget>[
          showProfile(),
        ],
      ),
    );
  }
}
