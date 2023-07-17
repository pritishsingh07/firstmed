import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LogInPage createState() => _LogInPage();
}

class _LogInPage extends State<LogInPage> {

  TextEditingController phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Card(
                  elevation: 0,
                  margin: EdgeInsets.only(top: 100),
                  child: Image(
                    image: AssetImage("assets/logo.png"),
                    width: 150,
                    height: 150,
                  ),
                ),
              ),
              Card(
                elevation: 16,
                margin: const EdgeInsets.all(10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Center(
                          child: Text(
                            "Access to our dashboard",
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8,),
                        Card(
                          elevation: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mobile Number",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Icon(Icons.star_border_outlined,
                                  size: 12,)
                                ],
                              ),
                              TextField(
                                controller: phoneNumber,
                                cursorHeight:
                                MediaQuery.of(context).size.height *
                                    0.03,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    prefixIcon: Container(
                                      margin: const EdgeInsets.only(
                                          left: 4, right: 10),
                                      child:const Icon(
                                        Icons.phone,
                                        color: Colors.black45,
                                        size: 24,
                                      ),
                                    ),
                                    hintText: "Mobile Number",
                                    hintStyle: const TextStyle(
                                        color: Colors.black45),
                                    prefixIconConstraints:
                                    const BoxConstraints.expand(
                                        width: 30, height: 48),
                                    alignLabelWithHint: true,
                                    enabledBorder:
                                    const OutlineInputBorder(
                                      gapPadding: 0,
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 1,
                                          style: BorderStyle.solid),
                                    ),
                                    focusedBorder:const OutlineInputBorder(
                                      gapPadding: 0,
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 1.5,
                                          style: BorderStyle.solid),
                                    ),
                                    border: const OutlineInputBorder(
                                      gapPadding: 0,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(0),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Card(
                          elevation: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Password",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Icon(Icons.star_border_outlined,
                                        size: 12,)
                                    ],
                                  ),
                                  GestureDetector(
                                    child:const Text(
                                      "Forgot Password?",
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.black,
                                        decorationThickness: 1.5
                                      ),
                                    ),
                                  )

                                ],
                              ),
                              TextField(
                                controller: phoneNumber,
                                cursorHeight:
                                MediaQuery.of(context).size.height *
                                    0.03,
                                decoration:const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 5),
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                        color: Colors.black45),
                                    prefixIconConstraints:
                                     BoxConstraints.expand(
                                        width: 30, height: 48),
                                    alignLabelWithHint: true,
                                    enabledBorder:
                                     OutlineInputBorder(
                                      gapPadding: 0,
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 1,
                                          style: BorderStyle.solid),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      gapPadding: 0,
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 1.5,
                                          style: BorderStyle.solid),
                                    ),
                                    border:  OutlineInputBorder(
                                      gapPadding: 0,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(0),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: const [
                                 BoxShadow(
                                    color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
                              ],
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.indigo.shade800,
                                  Colors.indigo.shade600,
                                  Colors.indigo.shade400,
                                ],
                              ),
                              color: Colors.deepPurple.shade300,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            margin:const EdgeInsets.only(top: 10,bottom: 10),
                            child:ElevatedButton(
                              onPressed: () {  },
                              style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all(
                                      Colors.transparent),
                                shadowColor:
                                MaterialStateProperty.all(Colors.transparent),
                              ),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child:const Text(
                                    "Sign In",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18
                                  ),
                                ),
                              )
                            ) ,
                          ) ,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),

    );
  }
}
