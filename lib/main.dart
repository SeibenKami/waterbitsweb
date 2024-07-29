import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //INTRO TEXT AND IMAGE

            Stack(
              children: [
                //bacground image
                Container(
                  height: 700,
                  color: Colors.amber,
                ),
                //tab bar
                Positioned(
                  right: 200,
                  top: 50,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 50,
                        width: 500,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ],
                  ),
                )
              ],
            ),
            // VISION AND MISSIONs
            Row(
              children: [
                ...List.generate(
                  4,
                  (index) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 400,
                        color: Colors.red,
                      ),
                    ),
                  ),
                )
              ],
            ),
            //HIGHLIGHTS AND SERVICES
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8),
              itemBuilder: (context, index) => Container(
                height: 200,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
