import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'screens/home_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    // final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntoScreen(),
    );
  }
}

class IntoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: IntroductionScreen(
          showSkipButton: true,
          skip: const Text('Skip'),
          pages: [
            PageViewModel(
              title: "Book Appointment",
              body: "No queues or skipping of lines",
              image: Center(
                child: Image.asset('assets/int1.png'),
              ),
            ),
            PageViewModel(
              title: "Get Your Hair Cut On Time",
              body: "Here you can write the description of the page, to explain someting...",
              image: Center(
                child: Image.asset("assets/int2.png"),
              ),
            )
          ],
          onDone: (){},
          done:  GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HomeScreen()
                )
                );
              },
              child: Text("Done", style: TextStyle(fontWeight: FontWeight.w600))
          )
      ),
    );
  }
  
}
