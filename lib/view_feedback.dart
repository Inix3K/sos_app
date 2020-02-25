import 'package:flutter/material.dart';
import 'package:sos_app/authentication.dart';
import 'package:sos_app/home_page.dart';
import 'package:sos_app/profile.dart';
import 'package:sos_app/submit_feedback.dart';

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
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
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
      drawer: Drawer(
          child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            // This should display current username, email, and avatar photo in future iterations
            accountEmail: Text("Email@email.com"),
            accountName: Text("User Name"),
            currentAccountPicture: CircleAvatar(
              child: Image.asset('assets/logo.png'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.portrait),
            title: Text("Profile"),
            onTap: () {
              // Load Profile Page
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text("View Feedback"),
            onTap: () {
              // Load View Feedback Page
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text("Submit Feedback"),
            onTap: () {
              // Load Submit Feedback Page
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SubmitFeedbackPage()));
            },
          ),
          Divider(),
          Expanded(
              child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                // Load Settings Page
              },
            ),
          ))
        ],
      )),
      body: Stack(
        children: <Widget>[
          showProfile(),
        ],
      ),
    );
  }
}
