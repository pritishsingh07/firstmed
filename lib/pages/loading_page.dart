import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'home_screen.dart';
import 'login_page.dart';


class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoadingPage createState() => _LoadingPage();
}

class _LoadingPage extends State<LoadingPage>  {
  static const storage = FlutterSecureStorage();


  @override
  void initState() {
    startTimer();
    super.initState();
  }
  startTimer()async{
    try{
      String? value = await storage.read(key: 'token');
      String? skipped = await storage.read(key:'skipped');
      if ((value != null && value.isNotEmpty) || (skipped!=null && skipped=="yes")) {
        Timer(const Duration(seconds: 3), () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const HomePage()));
        });
      }else{
        Timer(const Duration(seconds: 3), () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const LogInPage()));
        });
      }
    }catch(exception){
      storage.deleteAll();
      startTimer();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height*0.60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                elevation: 0,
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.10,top: 80),
                child: const Image(
                  image: AssetImage("assets/logo.png"),
                  width: 200,
                  height: 200,
                ),
              ),
              const Card(
                margin: EdgeInsets.zero,
                elevation: 0,
                child: CircularProgressIndicator(
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}