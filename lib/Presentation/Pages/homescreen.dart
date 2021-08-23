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
            image: AssetImage("assets/images/ROE.png"),
            width: double.infinity,
          ),
            Container(
                decoration: BoxDecoration(color: Colors.white,),
                height: 200.0,
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
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [Container(),
                      Container(decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(10)),
                        height: 550,
                        width: 400,
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Container(),
                            const Image(
                              image: AssetImage("assets/images/flag.png"),
                            ),
                                SizedBox(height: 15,),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text('Study Abroad', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(height: 8,),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text('We provide expert services for students to fulfill their dreams of obtaining foreign education. Our students are placed all around the globe and we are proud to have helped students get admitted into top universities in destinations such as USA, Europe, Australia and more.',
                                    style: TextStyle(color: Colors.black, fontSize: 20,), softWrap: true,),
                                ),
                          ],
                          ),
                        ),
                      SizedBox(width: 20,),
                      Container(decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(10)),
                        height: 550,
                        width: 400,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Container(),
                            const Image(
                              image: AssetImage("assets/images/flag.png"),
                            ),
                            SizedBox(height: 15,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Test Preparations', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(height: 8,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('We conduct test preparation classes like TOEFL and IELTS in our own modern classrooms. Our strength lies in deep expertise of our qualified instructors who have helped numerous students achieve high scores in various tests.',
                                style: TextStyle(color: Colors.black, fontSize: 20,), softWrap: true,),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(10)),
                        height: 550,
                        width: 400,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Container(),
                            const Image(
                              image: AssetImage("assets/images/flag.png"),
                            ),
                            SizedBox(height: 15,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Career Counseling', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(height: 8,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Be it Science, Management or Humanities, we have helped students in all fields for decades so we exactly know how you can plan your future which is appropriate for your background. We are proud to have helped students achieve success in different fields.',
                                style: TextStyle(color: Colors.black, fontSize: 20,), softWrap: true,),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(10)),
                        height: 550,
                        width: 400,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Container(),
                            const Image(
                              image: AssetImage("assets/images/flag.png"),
                            ),
                            SizedBox(height: 15,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Interview Assistance', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(height: 8,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('VISA interview is one of the biggest steps and a simple mistake in this step may prevent students from achieving their dreams. We provide expert assistance during this phase and help students by applying for interviews, scheduling interview dates, fees payment, and also help students prepare for interview questions.',
                                style: TextStyle(color: Colors.black, fontSize: 20,), softWrap: true,),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(10)),
                        height: 550,
                        width: 400,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Container(),
                            const Image(
                              image: AssetImage("assets/images/flag.png"),
                            ),
                            SizedBox(height: 15,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('General Services', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(height: 8,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Remember Euro Education for anything and everything related to foreign education. We provide all kind of services from finding the right university match to students educational background to helping students get scholarships as well. Our vast experience and expertise in this field has helped numerous students.',
                                style: TextStyle(color: Colors.black, fontSize: 20,), softWrap: true,),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(10)),
                        height: 550,
                        width: 400,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Container(),
                            const Image(
                              image: AssetImage("assets/images/flag.png"),
                            ),
                            SizedBox(height: 15,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Documentation', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(height: 8,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Documentation is one of the most important aspects of applying for foreign education. We can help students create documentation that makes sure universities accept the applications and also make sure VISA interviews are not rejected. We make sure that students do not miss any important documents during application process.',
                                style: TextStyle(color: Colors.black, fontSize: 20,), softWrap: true,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        ],
        ),
      ),
    );
  }
}
