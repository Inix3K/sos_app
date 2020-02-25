import 'package:flutter/material.dart';
import 'package:sos_app/profile.dart';
import 'package:sos_app/home_page.dart';
import 'package:sos_app/view_feedback.dart';
import 'package:sos_app/submit_feedback.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer(this.currentPage);

  final String currentPage;

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            // Close drawer
            Navigator.pop(context);

            // If current page was tapped, then return
            if (this.currentPage == "Home") return;

            // If different page was tapped, push that page
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.portrait),
          title: Text("Profile"),
          onTap: () {
            Navigator.pop(context);
            if (this.currentPage == "Profile") return;
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfilePage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.list),
          title: Text("View Feedback"),
          onTap: () {
            Navigator.pop(context);
            if (this.currentPage == "ViewFeedback") return;
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ViewFeedbackPage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.feedback),
          title: Text("Submit Feedback"),
          onTap: () {
            Navigator.pop(context);
            if (this.currentPage == "SubmitFeedback") return;
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SubmitFeedbackPage()));
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
              // Theme toggle as placeholder for Settings
              DynamicTheme.of(context).setBrightness(Theme
                  .of(context)
                  .brightness == Brightness.dark ? Brightness.light : Brightness
                  .dark);

              //Navigator.pop(context);

              if (this.currentPage == "Settings") return;
              //Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          ),
        ))
      ],
    ));
  }
}