import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Living extends StatefulWidget {
  const Living({Key? key}) : super(key: key);

  @override
  State<Living> createState() => _LivingState();
}

class _LivingState extends State<Living> {
  bool light = false;
  int counter = 0;
  int select = -1;

  void incrementCounter() {
    setState(() {
      counter++;
    }); // Incrementing the counter by 1
  }

  void decrementCounter() {
    setState(() {
      counter--;
    }); // Decrementing the counter by 1
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2e2e3e),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  return Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.grey,
                ),
              ),
              Text(
                "Living Room",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    light = !light;
                  });
                },
                child: Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: light ? Color(0xff2f2f3e) : Color(0xff3e3e53)),
                  child: Row(
                    mainAxisAlignment:
                        light ? MainAxisAlignment.end : MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: CircleAvatar(
                          backgroundColor:
                              light ? Colors.lightGreenAccent : Colors.grey,
                          maxRadius: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 100,
            width: 480,
            child: MySlider(),
          ),
          Stack(alignment: Alignment.center, children: [
            Image.asset("assets/button1.png"),
            light
                ? Text(
                    counter.toString(),
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.lightGreenAccent,
                        fontWeight: FontWeight.w500),
                  )
                : Container(
                    color: Colors.transparent,
                  ),
            light
                ? Positioned(
                    bottom: 210,
                    left: 210,
                    child: Icon(
                      Icons.circle_outlined,
                      size: 18,
                      color: Colors.lightGreenAccent,
                    ))
                : Container(
                    color: Colors.transparent,
                  ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    decrementCounter();
                  },
                  child: Icon(Icons.remove,
                      color: Colors.lightGreenAccent, size: 30)),
              Text("Auto",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.lightGreenAccent,
                      fontSize: 18)),
              InkWell(
                onTap: () {
                  incrementCounter();
                },
                child: Icon(
                  Icons.add,
                  color: Colors.lightGreenAccent,
                  size: 30,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    counter = 0;
                    select = 0;
                  });
                },
                child: Container(
                  height: 70,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Color(0xff43445b),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/b_1.png",
                        color: select == 0
                            ? Colors.lightGreenAccent
                            : Color(0xff2e2e3e),
                        height: 30,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "TEMP",
                        style: TextStyle(
                            color: select == 0
                                ? Colors.lightGreenAccent
                                : Color(0xff2e2e3e),
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    counter = 0;
                    select = 1;
                  });
                },
                child: Container(
                  height: 70,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Color(0xff43445b),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/b_2.png",
                        color: select == 1
                            ? Colors.lightGreenAccent
                            : Color(0xff2e2e3e),
                        height: 30,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Fan speed",
                        style: TextStyle(
                            color: select == 1
                                ? Colors.lightGreenAccent
                                : Color(0xff2e2e3e),
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    counter = 0;
                    select = 2;
                  });
                },
                child: Container(
                  height: 70,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Color(0xff43445b),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/b_3.png",
                        color: select == 2
                            ? Colors.lightGreenAccent
                            : Color(0xff2e2e3e),
                        height: 30,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "MODE",
                        style: TextStyle(
                            color: select == 2
                                ? Colors.lightGreenAccent
                                : Color(0xff2e2e3e),
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    counter = 0;
                    select = 3;
                  });
                },
                child: Container(
                  height: 70,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Color(0xff43445b),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/b_4.png",
                        color: select == 3
                            ? Colors.lightGreenAccent
                            : Color(0xff2e2e3e),
                        height: 30,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "TIMER",
                        style: TextStyle(
                            color: select == 3
                                ? Colors.lightGreenAccent
                                : Color(0xff2e2e3e),
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MySlider extends StatelessWidget {
  const MySlider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        aspectRatio: 30,
        enlargeCenterPage: true,
        initialPage: 1,
      ),
      items: [
        Column(
          children: [
            Image.asset(
              "assets/I_1.png",
              height: 70,
            ),
            Text(
              "Air Conditioner",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ],
        ),
        Column(
          children: [
            Image.asset(
              'assets/I_2.png',
              height: 70,
            ),
            Text(
              "TV",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ],
        ),
        Column(
          children: [
            Image.asset(
              'assets/I_3.png',
              height: 70,
            ),
            Text(
              "Router",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
