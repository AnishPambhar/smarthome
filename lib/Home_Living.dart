import 'package:flutter/material.dart';
import 'package:smarthome/Living.dart';

class home_living extends StatefulWidget {
  const home_living({Key? key}) : super(key: key);

  @override
  State<home_living> createState() => _home_livingState();
}

class _home_livingState extends State<home_living> {
  bool light = false;
  bool Tv = false;
  bool Air = false;
  bool router = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2f2f3f),
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff3f3f54),
              ),
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.97,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/H_1.png",
                          color: Colors.white,
                          height: 35,
                        ),
                        Image.asset(
                          "assets/H_2.png",
                          height: 35,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/H_3.png",
                          height: 35,
                          color: Colors.white,
                        ),
                        Image.asset(
                          "assets/H_4.png",
                          height: 35,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: light ? Color(0xff44445a) : Color(0xff2e2e3e)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/I_1.png",
                                height: 70,
                                color: light
                                    ? Colors.grey
                                    : Colors.lightGreenAccent),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  light = !light;
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: light
                                        ? Color(0xff2f2f3e)
                                        : Color(0xff3e3e53)),
                                child: Row(
                                  mainAxisAlignment: light
                                      ? MainAxisAlignment.start
                                      : MainAxisAlignment.end,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      child: CircleAvatar(
                                        backgroundColor: light
                                            ? Colors.grey
                                            : Colors.lightGreenAccent,
                                        maxRadius: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Light",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Phillips hue",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Material(elevation: 5,borderRadius:BorderRadius.circular(30),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Air? Color(0xff44445a):Color(0xff2e2e3e)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(onTap:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Living();
                              }));
                            },
                              child: Image.asset("assets/I_2.png", height: 70,color:  Air
                        ? Colors.grey
                        : Colors.lightGreenAccent),
                            ),
                            InkWell( onTap: () {
                              setState(() {
                                Air = !Air;
                              });
                            },
                              child: Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Air
                                      ? Color(0xff2f2f3e)
                                      : Color(0xff3e3e53),
                                ),
                                child: Row(mainAxisAlignment: Air
                                    ? MainAxisAlignment.start
                                    : MainAxisAlignment.end,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      child: CircleAvatar(
                                        backgroundColor:  Air
                                            ? Colors.grey
                                            : Colors.lightGreenAccent,
                                        maxRadius: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Air Conditioner",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "LG S3",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(elevation: 5,borderRadius:BorderRadius.circular(30),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color:  Tv ? Color(0xff44445a) : Color(0xff2e2e3e)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/I_3.png", height: 70,color:  Tv
                        ? Colors.grey
                        : Colors.lightGreenAccent),
                            InkWell( onTap: () {
                              setState(() {
                                Tv = !Tv;
                              });
                            },
                              child: Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Tv
                                      ? Color(0xff2f2f3e)
                                      : Color(0xff3e3e53),
                                ),
                                child: Row(mainAxisAlignment: Tv
                                    ? MainAxisAlignment.start
                                    : MainAxisAlignment.end,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      child: CircleAvatar(
                                        backgroundColor: Tv
                                            ? Colors.grey
                                            : Colors.lightGreenAccent,
                                        maxRadius: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Smart TV",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "LG A1",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Material(elevation: 5,borderRadius:BorderRadius.circular(30),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color:  router ? Color(0xff44445a) : Color(0xff2e2e3e)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/I_4.png", height: 70,color:  router
                        ? Colors.grey
                        : Colors.lightGreenAccent),
                            InkWell( onTap: () {
                              setState(() {
                                router = !router;
                              });
                            },
                              child: Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: router
                                      ? Color(0xff2f2f3e)
                                      : Color(0xff3e3e53),
                                ),
                                child: Row(mainAxisAlignment: router
                                    ? MainAxisAlignment.start
                                    : MainAxisAlignment.end,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      child: CircleAvatar(
                                        backgroundColor: router
                                            ? Colors.grey
                                            : Colors.lightGreenAccent,
                                        maxRadius: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Router",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "D_link 422",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
