import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/home01_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {

@override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      ()=>Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
          builder: (context)=>Home01UI())),
          );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pinkAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/pic01.png',
                width: MediaQuery.of(context).size.width * 0.55,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Text(
                'Flutter KM Project',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "Kanit",
                ),
              ),
              Text(
                'I love working overtime',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: "Kanit",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              CircularProgressIndicator(
                color: Colors.white,
              ),
            ],
          ),
        ));
  }
}
