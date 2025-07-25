import 'package:book_car/pages/homePage.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/img/On the way-cuate (2).png",
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 0,
            right: 0, // Add this!
            top: MediaQuery.of(context).size.height - 250,
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    const Color.fromARGB(209, 11, 11, 11),
                    const Color.fromARGB(200, 11, 11, 11),
                    const Color.fromARGB(184, 11, 11, 11),
                    Colors.transparent,
                  ],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Text(
                    "Welcome To GoCab",
                    style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  Text(
                    "Ride Any Time ✌️!",
                    style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(height: 25),
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "Let's Go !",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
