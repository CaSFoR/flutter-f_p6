import 'package:f_app6/pages/third_route.dart';
import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget {
  String username;
  String pass;

  SecondPage({super.key, required this.username,required this.pass});
  final inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("Second Page",style: TextStyle(color: Colors.white,fontSize: 28)),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.fromLTRB(5, 20, 5, 0),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  Container(
                    width: 400,
                    child: TextField(
                      controller: inputController,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                          filled: true,
                          focusColor: Colors.white,
                          hintText: "Phone/Web",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              margin: const EdgeInsets.fromLTRB(5, 15, 5, 10),
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 67,
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(
                                  2, 6, 80, 1)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      5))
                              )
                          )

                      ),
                      child: const Text(
                        "CALL", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 100,
                    height: 67,
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(
                                  2, 6, 80, 1)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      5))
                              )
                          )

                      ),
                      child: const Text(
                        "WEB", style: TextStyle(color: Colors.white),),
                    ),
                  ),

                ],
              ),

            ),
            Container(
                height: 300,
                margin: const EdgeInsets.all(5),
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 67,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ThirdPage(),),
                          );
                        },
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromRGBO(
                                    2, 6, 80, 1)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius
                                        .circular(5))
                                )
                            )

                        ),
                        child: const Text(
                          "NEXT", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],

                )
            ),


          ],
        ),
      ),
    );
  }
}
