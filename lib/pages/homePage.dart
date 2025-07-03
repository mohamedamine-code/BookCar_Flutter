import 'package:book_car/component/MyCard.dart';
import 'package:book_car/component/container.dart';
import 'package:book_car/pages/carInfo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {

    List <IconData> MyIcon=[
      Icons.directions_car,
      Icons.motorcycle,
      Icons.directions_bike,
      Icons.fire_truck,
      Icons.directions_bus,
    ];

    List <String> MyCar=[
      'assets/img/AUDI-Q6-S-LINE-1-1024x576.png',
      'assets/img/mythosblack_1_st-removebg-preview.png',
      'assets/img/purepng.com-yellow-audi-caraudicars-961524670899johme.png',
      'assets/img/R.png',
    ];
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 246, 246),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Icon(Icons.person),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome !"),
                    SizedBox(height: 5),
                    Text("Selct Your car "),
                  ],
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Center(child: Icon(Icons.notification_add)),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search..',
                  border: InputBorder.none, // removes default border
                  // enabledBorder:
                  //     InputBorder.none, // removes border when enabled
                  // focusedBorder:
                  //     InputBorder.none, // removes border when focused
                  contentPadding: EdgeInsets.all(10), // optional: add padding
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              // color: Colors.redAccent,
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: MyIcon.length,
                itemBuilder: (context, index) {
                  return Mycontainer(
                    iconData: MyIcon[index],
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 440,
              child: GridView.builder(
                
                itemCount: MyCar.length,
                // physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1/1.1,//width/height
                  crossAxisCount: 1,
                ),
                itemBuilder: (context, index) {
                  return Mycard(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Carinfo() ));
                    },
                    path: MyCar[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
