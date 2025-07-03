import 'package:flutter/material.dart';

class Carinfo extends StatelessWidget {
  const Carinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Car Information"), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
            ),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Image.asset("assets/img/R.png"),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Mark:"), Text("name of car ")],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Model:"), Text("Name of car ")],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("price per day:"), Text("name of car ")],
                ),

                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Nbre of place:"), Text("name of car ")],
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("🤬 Conect Your App to a Backend !")));
            },
            child: Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(10)),
              child: Center(child: Text("Book Now !")),
            ),
          ),
        ],
      ),
    );
  }
}
