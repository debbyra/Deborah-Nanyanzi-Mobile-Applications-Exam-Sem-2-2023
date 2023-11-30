import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar to navigate back to the home screen
        appBar: AppBar(
          title: const Text(
            "Student App",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          actions: [
            const IconButton(onPressed: null, icon: Icon(Icons.menu)),
            IconButton(
                icon: const Icon(
                  Icons.person,
                  semanticLabel: "About",
                  color: Colors.amber,
                ),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutScreen(),
                    ))),
          ],
          backgroundColor: Colors.white,
        ),

        //body starts here
        body: const Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Student Details:",
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: EdgeInsets.only(left: 50),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text("Email: deborahrah20@gmail.com", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Name: Deborah Nanyanzi", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Student Number: 031", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                  ],
                ))
          ],
        ));
  }
}
