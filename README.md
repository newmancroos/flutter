# flutter_app

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

<p>
Flutter:
•	Good performance
•	Smooth Animation
•	Beautiful design
•	One code base compile to Android and iOS

Dart:
• Flutter is written in Dart
• Dart is a terse, strongly typed, object-oriented language
• C#, Javascript coding style
• It supports
o Just-In-Time compilation - Code is continuously recompiled directly on the device, allowing hot reload - Development
o Ahead-of-compilation – The code the app uses is compiled directly to native ARM code, leading to fast startup and predictable performance - Production

<p>
Set Up Your Environment
You can set up your development environment by following the instructions at https://flutter.io/setup for your operating system.

You can use many IDEs for developing Flutter apps, including Android Studio, IntelliJ, and VSCode. You can find instructions for these IDEs at https://flutter.io/using-ide.

If using Android Studio, please ensure your version is 3.1.x.
You can use a physical iOS/Android device or an emulator. If using an emulator, you can follow the instructions at https://developer.android.com/studio/run/managing-avds. You can select any device and any SDK. If unsure, choose the Pixel 2 and the most recent SDK. You can leave all settings as the default, and you can optionally enable hardware acceleration.
Note: We're using Android Studio 3 and the latest Android SDK at the time of recording.
If you come across any errors, you can try to debug these problems by looking in our Github issues, StackOverflow #flutter tag, and on Gitter. You can also file an issue or ask a question yourself.
Documentation: https://docs.flutter.io/
Github: https://github.com/flutter/flutter
StackOverflow: https://stackoverflow.com/questions/tagged/flutter
Gitter: https://gitter.im/flutter/flutter

To Install Flutter just goto flutter site and download Flutter zip and extract to a folder and then add Path variable in the environment variable. When we create a Flutter application Andriod studio ask us to select Flutter install location.
If you install Android Studio then need to install plugins for Dart (restart Android Studio) and Flutter (restart Android Studio). Also need to install Emulator.
Create a Flutter application.:
There two ways to create Flutter application

</p>
<p>
1. Using Adroid Studio -> New Flutter project -> Select Flutter Application
2. Command prompt type
   • Flutter create <Application Name>
   If you encounter any License error while running application, run
   flutter doctor --android-licenses

• The View of the Flutter application build as beautiful tree of widget

</p>
Ex.
<pre>
import 'package:flutter/material.dart';
void main() {
	runApp(
		MaterialApp(
			debugShowCheckedModeBanner: false,
			title: 'Hello Rectangle',
			home: Scaffold(
				appBar: AppBar(
				title: Text('Hello Rectangle'),
				),
				body: HelloRectangle(),
			),
		),
	);
}

class HelloRectangle extends StatelessWidget {
@override
	Widget build(BuildContext context) {
		return Center(
			child: Container(
				color: Colors.greenAccent,
				height: 500.0,
				width: 350.0,
				child: Center(
					child: Text(
						'Hello!',
						style: TextStyle(fontSize: 60.0),
						textAlign: TextAlign.center,
					),
				),
			),
		);
	}
}
</pre>
<ul>
	<li>
		When state changes by clicking a button Wedget automatically updates the UI
		<img src="./Udacity/images/widget_lifecycle.png"
	</li>
</ul>
</p>
