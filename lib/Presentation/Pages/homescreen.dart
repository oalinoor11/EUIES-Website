import 'package:EUIES_Web/Core/Widgets/webheadbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
            children: [Container(),
            SizedBox(height: 100,),
            const Image(
            image: AssetImage("assets/images/flag.png"),
            width: double.infinity,
          ),
            Container(
                decoration: BoxDecoration(color: Colors.white,),
                height: 190.0,
                width: double.infinity,
                child:
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('SERVICES', style: TextStyle(color: Colors.red, fontSize: 16),),
                      SizedBox(height: 15,),
                      Text('Our Dedicated Services', style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore.',
                        style: TextStyle(color: Colors.black, fontSize: 14,),textAlign: TextAlign.center,),
                      Text('________', style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Column(
                  children: [Container(),
                    Container(decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(5)),
                      height: 500,
                      width: 400,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Container(),
                          const Image(
                            image: AssetImage("assets/images/flag.png"),
                            width: double.infinity,
                          ),
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  SizedBox(width: 15,),
                                  Text('Study Abroad', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  SizedBox(width: 15,),
                                  Text('We provide expert services for students to fulfill their dreams of obtaining foreign education. Our students are placed all around the globe and we are proud to have helped students get admitted into top universities in destinations such as USA, Europe, Australia and more.',
                                    style: TextStyle(color: Colors.black, fontSize: 20,),textAlign: TextAlign.start,),
                                ],
                              ),
                        ],
                        ),
                      ),
                  ],
                ),
              ),
        ],
        ),
      ),
    );
  }
}
