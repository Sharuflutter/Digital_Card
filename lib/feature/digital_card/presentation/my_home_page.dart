
import 'package:flutter/material.dart';

import 'widgets/digital_card_row.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text(
          "My Digital Card",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          // Alt + Enter
          child: Card(
            elevation: 8.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // chatang ma click garema refresh hunxa,yeslai hot reload vanxa
                  // Image.network("https://static.thenounproject.com/png/3201587-200.png"),
                  // Image.asset("assets/1.jpeg",height: 200,width: 200,),
                  const SizedBox(
                    height: 16,
                  ),
                  const CircleAvatar(
                    radius: 80, // Image radius
                    backgroundImage: AssetImage("assets/one.jpeg"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                 DigitalCardRow(
                     labelName: 'Name :',
                     labelValue: 'Khem Sharu'),

                  const SizedBox(height: 16),
                  DigitalCardRow(
                      labelName: 'Contact :',
                      labelValue: '9805474536'),
                  const SizedBox(height: 16),

                  DigitalCardRow(
                      labelName: 'Roll No :',
                      labelValue: '5734'),
                  const SizedBox(height: 16),

                  DigitalCardRow(
                      labelName: 'Level :',
                      labelValue: 'Bachelor'),
                  const SizedBox(height: 16),

                  DigitalCardRow(
                      labelName: 'Address :',
                      labelValue: 'Devdaha,Khaireni,Butwal',
                    maxLines: 2,
                  ),
                  const SizedBox(height: 16),

                  DigitalCardRow(
                      labelName: 'Expiry Date :',
                      labelValue: '2023-12-30'),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),


    );
  }



}
