
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Row(
          children: [

            Expanded(
                child: CarouselSlider(
                  options: CarouselOptions(

                    height: MediaQuery.of(context).size.height,
                    pauseAutoPlayInFiniteScroll: true,
                    viewportFraction: 1.0,
                    autoPlay: true,
                  ),
                  items: [
                    Container(
                      color: Colors.greenAccent,
                      width: MediaQuery.of(context).size.width/2,
                    ),
                    Container(
                      color: Colors.tealAccent,
                      width: MediaQuery.of(context).size.width/2,
                    ),
                    Container(
                      color: Colors.blueAccent,
                      width: MediaQuery.of(context).size.width/2,
                    )
                  ],
                )
            ),

            Expanded(

              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(100.0, 60.0, 100.0, 30.0),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.stretch,

                    children: [

                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/logo.png'),
                            SizedBox(
                              height: 15.0,
                            ),

                            Text('Login', style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w800, fontSize: 30.0),),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Welcome to D-Community', style: TextStyle(color: Colors.black, fontSize: 25.0),),

                      SizedBox(
                        height: 10.0,
                      ),

                      Text('Please login to your account and start searching for jobs...', style: TextStyle(color: Colors.black38),),

                      SizedBox(
                        height: 25.0,
                      ),
                      Container(
                          child: Row(
                            children: [


                              Text('Mobile Number ', style: TextStyle(fontWeight: FontWeight.w900)),

                              Text('*', style: TextStyle(fontWeight: FontWeight.w900, color: Colors.red)),
                            ],
                          )

                      ),


                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter your mobile number',
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onChanged: (value) {
                          // do something
                        },
                      ),

                      SizedBox(
                        height: 15.0,
                      ),

                      Text('Enter OTP', style: TextStyle(fontWeight: FontWeight.w900),),


                      SizedBox(
                        height: 10.0,
                      ),

                      TextFormField(
                        decoration: InputDecoration(
                          hintText: '',
                          prefixIcon: Icon(Icons.lock),
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                        ),

                        onChanged: (value) {
                          // do something
                        },
                      ),

                      SizedBox(
                        height: 40.0,
                      ),

                      ElevatedButton(
                        onPressed: () {
                          debugPrint('ElevatedButton Clicked');
                        },
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 12.0),
                            child: Text('Send OTP',style: TextStyle(fontSize: 15.0),)),
                        style: ElevatedButton.styleFrom(shape: StadiumBorder(),),
                      ),


                    ],
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
