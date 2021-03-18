import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'HomePage.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  //Size size = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SecondPage(),
    Text("message"),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  RangeValues values = RangeValues(0,100);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.blue.shade900,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                //height:,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 250.0),
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
                            child: Row(
                              children: <Widget>[
                                Column(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    
                                    Padding(
                                      padding: const EdgeInsets.only(right: 180.0),
                                      child: Text("Intensity",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue.shade900),),
                                    ),
                                   // SvgPicture.asset("assets/images/Icon ionic-md-arrow-round-back.svg"),
                                    Container(
                                      //width: 300,
                                      child: Row(
                                        
                                        children: [
                                          SvgPicture.asset("assets/images/bulb.svg"),
                                          SizedBox(
                                            width: 260,
                                            child: RangeSlider(
                                        
                                        min: 0,
                                        max: 100,
                                        divisions: 5,
                                        activeColor: Colors.amber,
                                        inactiveColor: Colors.amberAccent,
                                        values: values,
                                        onChanged: (values){
                                            setState(() {
                                              values = values;                                        
                                            });
                                        },
                                      ),
                                          ),
                                      SvgPicture.asset("assets/images/bulb.svg"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                
                              ],
                            ),

                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0, 20.0, 140.0, 13.0),
                                    child: Text("Colors",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue.shade900),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 6),
                                          child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Color(0xFF356C95)),
                                      ),
                                      child: DecoratedBox(decoration: BoxDecoration(color: Colors.deepOrange.shade200,shape: BoxShape.circle),),
                                    ),
                                        ),
                                         Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 6),
                                          child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Color(0xFF356C95)),
                                      ),
                                      child: DecoratedBox(decoration: BoxDecoration(color: Colors.blue,shape: BoxShape.circle),),
                                    ),
                                        ),

                                         Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 6),
                                          child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Color(0xFF356C95)),
                                      ),
                                      child: DecoratedBox(decoration: BoxDecoration(color: Colors.purple.shade200,shape: BoxShape.circle),),
                                    ),
                                        ),

                                         Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 6),
                                          child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Color(0xFF356C95)),
                                      ),
                                      child: DecoratedBox(decoration: BoxDecoration(color: Colors.blue.shade300,shape: BoxShape.circle),),
                                    ),
                                        ),

                                         Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 6),
                                          child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Color(0xFF356C95)),
                                      ),
                                      child: DecoratedBox(decoration: BoxDecoration(color: Colors.greenAccent,shape: BoxShape.circle),),
                                    ),
                                        ),

                                         Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 6),
                                          child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Color(0xFF356C95)),
                                      ),
                                      child: DecoratedBox(decoration: BoxDecoration(color: Colors.blue,shape: BoxShape.circle),),
                                    ),
                                        ),
                                   
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                   Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0, 20.0, 150.0, 0.0),
                                    child: Text("Scense",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue.shade900),),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 140,
                                      height: 60,
                                      //color: Colors.red,
                                      decoration: BoxDecoration(
                                        color: Colors.deepOrange.shade200,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            spreadRadius: 5,
                                            blurRadius: 0.5,
                                            color: Colors.pink.withOpacity(0.10),
                                          ),
                                        ] 
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          SvgPicture.asset("assets/images/bulb.svg"),
                                          Text("Birthday",style: TextStyle(fontSize: 25.0,color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 140,
                                      height: 60,
                                      //color: Colors.red,
                                      decoration: BoxDecoration(
                                        color: Colors.purple.shade300,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            spreadRadius: 5,
                                            blurRadius: 0.5,
                                            color: Colors.pink.withOpacity(0.10),
                                          ),
                                        ] 
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          SvgPicture.asset("assets/images/bulb.svg"),
                                          Text("Party",style: TextStyle(fontSize: 25.0,color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ),
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 140,
                                      height: 60,
                                      //color: Colors.red,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade200,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            spreadRadius: 5,
                                            blurRadius: 0.5,
                                            color: Colors.blueAccent.withOpacity(0.10),
                                          ),
                                        ] 
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          SvgPicture.asset("assets/images/bulb.svg"),
                                          Text("Relax",style: TextStyle(fontSize: 25.0,color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 140,
                                      height: 60,
                                      //color: Colors.red,
                                      decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            spreadRadius: 5,
                                            blurRadius: 0.5,
                                            color: Colors.pink.withOpacity(0.10),
                                          ),
                                        ] 
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          SvgPicture.asset("assets/images/bulb.svg"),
                                          Text("Fun",style: TextStyle(fontSize: 25.0,color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 0.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0.0, 60.0, 10.0, 0.0),
                                child: SvgPicture.asset("assets/images/Icon ionic-md-arrow-round-back.svg"),
                              ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0.0, 50.0, 130.0, 0.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Bed\nRoom",
                                        style: TextStyle(
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                              
                                    ],
                                  ),
                                ),
                             SizedBox(
                               width: 100,
                               height: 110,
                               child: SvgPicture.asset("assets/images/light bulb.svg")),
                             
                            ],
                          ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             
                              Padding(
                               padding: EdgeInsets.fromLTRB(30.0, 6.0, 0.0, 0.0),
                               child:  Text(
                                "4 light",
                                style:
                                    TextStyle(fontSize: 20.0, color: Colors.orange),
                              ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 100.0,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 140,
                                        height: 60,
                                        //color: Colors.red,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              spreadRadius: 5,
                                              blurRadius: 0.5,
                                              color: Colors.white.withOpacity(0.10),
                                            ),
                                          ] 
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            SvgPicture.asset("assets/images/bulb.svg"),
                                            Text("Main Light",style: TextStyle(fontSize: 20.0,color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 140,
                                        height: 60,
                                        //color: Colors.red,
                                        decoration: BoxDecoration(
                                          color: Colors.black38,
                                          borderRadius: BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              spreadRadius: 5,
                                              blurRadius: 0.5,
                                              color: Colors.pink.withOpacity(0.10),
                                            ),
                                          ] 
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            SvgPicture.asset("assets/images/bulb.svg"),
                                            Text("Dark Light",style: TextStyle(fontSize: 20.0,color: Colors.white)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 140,
                                        height: 60,
                                        //color: Colors.red,
                                        decoration: BoxDecoration(
                                          color: Colors.pink,
                                          borderRadius: BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              spreadRadius: 5,
                                              blurRadius: 0.5,
                                              color: Colors.pink.withOpacity(0.10),
                                            ),
                                          ] 
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            SvgPicture.asset("assets/images/bulb.svg"),
                                            Text("Relax",style: TextStyle(fontSize: 25.0,color: Colors.white)),
                                          ],
                                        ),
                                      ),
                                    ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                  height: 25.0,
                  width: 25.0,
                  child: SvgPicture.asset("assets/images/bulb.svg")),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Container(
                  height: 25.0,
                  width: 25.0,
                  child: SvgPicture.asset("assets/images/home.svg")),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Container(
                  height: 25.0,
                  width: 25.0,
                  child: SvgPicture.asset("assets/images/settings.svg")),
              title: Text(""),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ),
    );
  }
}