# sos_app

SOS Multiplatform Application

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

[Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
[Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


Below is a step-by-step guide with links on getting started on the sos_app.
This app uses a variety of software to manage creation and upkeep.
	1) GitHub and GitBash for code saving.
	2) Flutter for app creation.
	3) Android Studio for code work and testing on android (There are other editors for Apple products, we used Android Studio).
	4) FireBase for database.

### GitHub and GitBash
	Create a profile on GitHub and have an instructor add you as a contributor.
	Install git
	https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
	On GitBash
		cd <WHERE_APP_WILL_GO>
		git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY

### Flutter
    A short guide in helping getting things ready. This largely follows the following link below with possible issues faced. I will get into them in some detail.
	https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1/#0
	Step 1: Introduction
	Step 2: Set up your flutter environment
		Download flutter sdk and editor. Follow the links for where to download the options. Even if you have your own device, it is extremely recommended to use Android Studio.
		The link provided will have their own step by step process to download Flutter SDK, unzip in C:\, what to do after downloading Android Studio, etc.
		https://flutter.dev/docs/get-started/install
	Step 3+:
		Good information and good start for how to use flutter to make an app.

### Android Studio
	Step 1: Install
	Step 2: Set up an editor
		1) When opening for first time, open the project you cloned with GitBash.
			Download Flutter Plugin, instructions on website.
			Sometimes Dart will not install automatically for some reason. It will inform you on the main project screen. In that case, go here to download: https://dart.dev/get-dart
			You may have to inform Android Studio where the Dart SDK is in its settings, it'll give you where to go where it informs you that it needs Dart. But just in case...it's in File > Settings > Languages & Frameworks > Dart.
		2) If there are lots of red stars and lines showing issues, it's likely it doesn't know where the Flutter SDK is.
			File > Settings > Languages & Frameworks > Flutter
			Make the Flutter SDK path the flutter folder, you should have put it in the C:\
		3) If it says at the top "'Packages get' has not been run"
			Get dependencies, reload Android Studio if necessary, but it should go away. Feel free to upgrade dependencies too if need be.
		4) Code files
			Dependencies and loading packages are in pubspec.yaml
			Code files are in the lib folder.
				authentication.dart
					Defines authentication class and authentication functions.
                drawer.dart
                    Drawer widget for navigation.
				home_page.dart
					Initial log in page, placeholder for dashboard.
				login_signup_page.dart
					Login and signup forms.
				main.dart
					Runs app, calls root_page.dart.
				profile.dart
					Placeholder page for profile
				root_page.dart
					Determines login status (logged in / logged out) and loads appropriate page (home_page.dart if logged in, login_signup_page.dart if logged out).
				submit_feedback.dart
					Placeholder page for submitting feedback.
				view_feedback.dart
					Placeholder page for viewing feedback
		5) Git work
			VCS > Git > Pull/Push/etc. will have what you need. Here is a link to explain it in more detail.
			https://medium.com/code-yoga/how-to-link-android-studio-with-github-312037a13b99
	Step 3: Test drive
		You can test out the app as it stands now, easiest way is to plug in your android with a cable. Emulator will work on this as well, just may be slower.
		In order to have your phone allow the app to run, you must enable developer mode. Look it up for your specific device.
		It will show up as an option next to the play button on the toolbar.
		It will take some time for the information to download onto your phone for the first time, but it will pop open once ready. It will work much quicker after that.
		Using the emulator
			Tools > Android > AVD Mangager (or on the toolbar).
			When choosing "Graphics:" it is recommend to choose hardware if the choice is available. This is referred to as Emulator Acceleration.
			Once created, it will show up as an option, same as a plugged in phone on the toolbar next to the play button.
			Akin to the plugged in phone, it will take a while to build.
	Step 4+:
		Similar to the Flutter section, good start of how to use flutter to make an app.

### FireBase
	The guide follows the following link:
	https://firebase.google.com/docs/flutter/setup?platform=android
	Log into FireBase and get access to the project.
		https://console.firebase.google.com/u/0/
		https://console.firebase.google.com/u/0/project/sos-app-64997/overview
	It should already be connected to FireBase, you only need permissions to logon and use.
	A guide to use FireBase:
		https://www.youtube.com/watch?v=N0WqTclxkaE
	The app already authenticates with a new user in the "Authentication" section as well as a start for the user profiles in the "Database" section.

### Next Steps:
	Ability to give and receive feedback
		Users can view the feedback given to them
		User to User
		User to group
	Possibly set up reply functionality
	Choose feedback based on person, lesson, flight
		Those who have privileges for "group" can read feedback