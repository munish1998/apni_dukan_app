import 'package:flutter/material.dart';

class TutorialScreen1 extends StatefulWidget {
  const TutorialScreen1({Key? key}) : super(key: key);

  @override
  State<TutorialScreen1> createState() => _TutorialScreen1State();
}

class _TutorialScreen1State extends State<TutorialScreen1> {
  @override
  Widget build(BuildContext context) {
    // Get the height of the app bar
    final appBarHeight = AppBar().preferredSize.height;

    return Scaffold(
      // backgroundColor: Colors.black45,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/image1.png',
            // height: MediaQuery.of(context).size.height - appBarHeight,
            // width: double.infinity,
            fit: BoxFit.cover, // Ensure the image covers the entire area
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Positioned(
              bottom: 0,
              // top: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.elliptical(
                      160,
                      1,
                    ),
                    topLeft: Radius.elliptical(80, 1),
                    bottomLeft: Radius.circular(45)),
                child: Container(
                  height: 85,
                  width: 30,
                  color: Color.fromARGB(255, 195, 90, 52),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            // top: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.elliptical(
                  180,
                  1,
                ),
                topLeft: Radius.elliptical(90, 1),
                bottomLeft: Radius.circular(45),
              ),
              child: Container(
                height: 370,
                width: 420,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 45, left: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 12,
                        width: 25,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Start Journey',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const Text(
                        'Purchase Online !!',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'In publishing and graph design lorem',
                        style: TextStyle(
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      const Text(
                        'ipsum is a placeholder text commonly used',
                        style: TextStyle(
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      Container(
                        height: 12,
                        width: 25,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 226, 70, 166)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // Row(
                      //   children: [
                      //     const Text(
                      //       'Skip',
                      //       style: TextStyle(
                      //           fontSize: 15,
                      //           color: Colors.black,
                      //           fontWeight: FontWeight.bold),
                      //     ),
                      //     Container(
                      //       height: 40,
                      //       width: 80,
                      //       decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(25),
                      //           color: Colors.orange),
                      //       child: const Center(
                      //         child: Text(
                      //           'next',
                      //           style: TextStyle(
                      //               fontSize: 15,
                      //               color: Colors.white,
                      //               fontWeight: FontWeight.bold),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
