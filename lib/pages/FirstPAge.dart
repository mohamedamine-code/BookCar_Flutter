import 'package:book_car/pages/homePage.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset("assets/img/0a12131d595ca1ac8625fc43a5a87443.jpg",fit: BoxFit.cover,)),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 178, 63)
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome To GoCab",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      Text("Ride Any Time ✌️!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                      SizedBox(height: 25,),
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                          },
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child: Text("Let's Go !",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}