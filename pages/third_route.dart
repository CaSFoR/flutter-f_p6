import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
   ThirdPage({super.key});
  final latuetudeController = TextEditingController();
  final longueteudeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("Map Page",style: TextStyle(color: Colors.white,fontSize: 28)),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(20,15,20,15),
              margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  Container(
                    child:TextField(
                      controller: latuetudeController,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                          filled: true,
                          focusColor: Colors.white,
                          hintText: "Latuetude",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(0))
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    child:TextField(
                      controller: longueteudeController,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                          filled: true,
                          focusColor: Colors.white,
                          hintText: "Longueteude",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(0))
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              color: Colors.black,
              height: 300,
              margin: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height:67,
                    child:     ElevatedButton(
                      onPressed: () {

                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(
                              2, 6, 80, 1)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                              )
                          )

                      ),
                      child: const Text("MAP",style: TextStyle(color: Colors.white),),
                    ),
                  ),

                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 100,
                    height:67,
                    child:ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(
                              2, 6, 80, 1)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                              )
                          )

                      ),
                      child: const Text("BACK",style: TextStyle(color: Colors.white),),
                    ),
                  )

                ],
              ),
            )



          ],
        ),
      ),
    );
  }
}
