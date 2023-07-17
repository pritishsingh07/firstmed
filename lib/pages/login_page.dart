import 'package:flutter/material.dart';


class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LogInPage createState() => _LogInPage();
}

class _LogInPage extends State<LogInPage>  {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.98,
        child: Scaffold(),
      ),
    );
  }

}
