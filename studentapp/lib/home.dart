import 'package:flutter/material.dart';
import 'package:studentapp/about_sceen.dart';

// from stateless to stateful widget
class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Student App",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [
          const IconButton(onPressed: null, icon: Icon(Icons.menu)),

          // this icon button takes you to the AboutScreen
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

      // body starts here
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),

          //toggle button to display student details
          ElevatedButton(
            onPressed: () => ToggleButtons(
              isSelected: const [],
              children: const [
                Text("Students Details: John doe, Age: 20, Grade: A"),
              ],
            ),
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.amber)),
            child: const Text(
              "Show Details",
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 140),
            child: Text(
              "Student Details",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w900),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 70, left: 10),

                //button to navigate to the AboutSCreen
                child: ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AboutScreen(),
                      )),
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.black87)),
                  child: const Text(
                    "About",
                    style: TextStyle(fontSize: 18, color: Colors.amber),
                  ),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
