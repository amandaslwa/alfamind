import 'package:alfamind/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:alfamind/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  
  @override
  State<SplashScreen> createState() => _SplashScreeenState();
}

class _SplashScreeenState extends State<SplashScreen>
with SingleTickerProviderStateMixin{

    @override
    void initState() {
      super.initState();
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const SignIn())
        );
      });
    }

    @override
    void dispose() {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values
      );
    }
    
    @override
    Widget build(BuildContext context) {
      // Timer(
      //   Duration(seconds: 3),
      //     () => Navigator.pushReplacement(
      //       MaterialPageRoute(
      //         builder: (context) => SignIn(),
      //   )
      return  Scaffold(
        body: Container(
          width: double.infinity,
          // height: 844,
          decoration: const BoxDecoration(
            // borderRadius : BorderRadius.only(
            //   topLeft: Radius.circular(20),
            //   topRight: Radius.circular(20),
            //   bottomLeft: Radius.circular(20),
            //   bottomRight: Radius.circular(20),
            // ),
            gradient : LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromRGBO(243, 72, 97, 1),Color.fromRGBO(250, 31, 53, 1),Color.fromRGBO(132, 6, 23, 1)]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo_alfamind.png', height: 100,),
            ],
          ),
        ),
      );
    }
  }

