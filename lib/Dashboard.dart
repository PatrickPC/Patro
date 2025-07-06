import 'package:flutter/material.dart';
import 'package:patra/calander.dart';




// ignore: must_be_immutable
class Dashboard extends StatelessWidget{ 
  var height,width;

  List imgData = [
    "images/patra.jpeg",
    "images/radio.jpeg",
    "images/news.jpeg",
    "images/pustakalaya.jpg",
    "images/setting.jpeg",
    "images/about.jpeg",

  ];

  List titles = [
    "पात्रा",
    "रेडियो",
    "समाचार",
    "पुस्तकालय",
    "सेटिङ",
    "हमार बारे",
  ];



  @override
  Widget build(BuildContext context){
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;

    return Scaffold(

      body: SingleChildScrollView(
        
        child: Container(
          width: width,
        color: Colors.deepPurple,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple
                ),
                height: height*0.23,
                width: width,
                child: Column(
                  
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top:35,
                        left:15,
                        right:15,
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Icon(
                              Icons.sort,
                              color: Colors.white,
                              size: 40,
                            ),
                      
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top:30,
                        left:15,
                        right:15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      children: [
                        Text(
                          "Jay Gurbaba...",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500 ,
                          ),
                        ),
                        
                      ],
                    ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    )
                  ),
                  //height: height,
                  width: width,
                  padding: EdgeInsets.only(
                    bottom: 20
                  ) ,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                    childAspectRatio: 1.1,
                    mainAxisSpacing: 25,
                        
                  ),
                  shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                   itemCount: 6,
                   itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NepaliCalendar()));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 1,
                              blurRadius: 6,
                            )
                          ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(imgData[index],
                            width: 100,
                            ),
                            Text(
                              titles[index],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                     
                   },
                   ),
                        
                ),
              ),
            ],
            ),
        ),
      ),
    );

  }
}