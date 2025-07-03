import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  final String path;
  final VoidCallback onTap;
  const Mycard({required this.path,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(Icons.person),
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
            SizedBox(height: 10),
            Image.asset(path, height: 200),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.circular(15) 
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Name Of Car",style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            Icon(Icons.access_time,size: 20,),
                            SizedBox(width: 10,),
                            Text("25 min "),
                            
                          ],
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: (){
                        onTap();
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.orange,
                        ),
                        child: Center(
                          child: Text("View Detailes"),
                        ),
                      ),
                    )
                  ],
                
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
