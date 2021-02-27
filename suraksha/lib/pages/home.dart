import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        color: Colors.blue[50],
        padding: EdgeInsets.fromLTRB(35,25,25,0),
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/backimg.jpg"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: ListView(
          children: [
            FirstHalf(),
          ]
        ),))
    );
  }
}

class FirstHalf extends StatefulWidget {
  @override
  _FirstHalfState createState() => _FirstHalfState();
}

class _FirstHalfState extends State<FirstHalf> {
  @override
  Widget build(BuildContext context) {
    return Container(
        
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title(),
          SizedBox(height: 20),
          help(),
          SizedBox(height: 20),
         contact(),
         SizedBox(height: 20),
         Text("Explore",style:TextStyle(fontSize: 25,fontWeight:FontWeight.w900),textAlign: TextAlign.left,),
         SizedBox(height: 10),
         explore(),
        SizedBox(height: 20),
        card(),

        ],)      
    );
  }
}

Widget title(){
   return Padding(
     padding: const EdgeInsets.fromLTRB(0,0,40,0),
     child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Kochi,Kerala",
                    style:TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 15,
                    )
                    ),
                    Text("Janatha Road",
                    style:TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 35,
                    )
                    )
                    ]
                ),
                Container(
                child: Icon(Icons.settings),
                width: 40,
                height: 40,
                decoration: BoxDecoration(color: Colors.white,
                boxShadow: [BoxShadow(color:Colors.grey[600],
                blurRadius: 8.0,),],
                shape: BoxShape.circle),)]
                    ),
   );
}

Widget help(){
  return Container(
        padding: EdgeInsets.all(15),
        height: 200,
        width: 400,
        
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color:Colors.grey,
          blurRadius: 5.0,),],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/announce.jpg'),
            ),
            SizedBox(height:20),
            Container(
    height: 50.0,
    child: GestureDetector(
        onTap: () {},
        child: Container(
            width: 200,
            decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(30.0),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Center(
                        child: Text(
                           "NEED HELP!",
                            style: TextStyle(
                                color: Colors.cyanAccent[400],
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                            ),
                        ),
                    )
                ],
            ),
        ),
    ),
)

          ]
        ),
    
  );
}

Widget contact(){
  return Container(
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.all(15),
          height: 160,
          width: 200,
          
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color.fromRGBO(252, 74, 26, 1),Color.fromRGBO(247, 183, 51, 1)]),
            boxShadow: [BoxShadow(color:Colors.grey,
            blurRadius: 5.0,),],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Active Emergency',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25)),
              SizedBox(height:10),
              Text('Call 101 for emergencies',style: TextStyle(color: Colors.grey[350],fontWeight: FontWeight.w100,fontSize: 15)),
              SizedBox(height:10),
              Container(
      height: 30.0,
      child: GestureDetector(
          onTap: () {},
          child: Container(
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                      Center(
                          child: Text(
                             "1-0-1",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                              ),
                          ),
                      )
                  ],
              ),
          ),
      ),
)

            ]
          ),
      
    ),

    // 2nd card
    SizedBox(width:20),

    Container(
          padding: EdgeInsets.all(15),
          height: 160,
          width: 200,
          
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color:Colors.grey,
            blurRadius: 5.0,),],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Contacts',style: TextStyle(color: Colors.cyanAccent[400],fontWeight: FontWeight.bold,fontSize: 25)),
              SizedBox(height:10),
              Text('Call your Close Ones',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w300,fontSize: 15)),
              SizedBox(height:30),
              Container(
      height: 30.0,
      child: GestureDetector(
          onTap: () {},
          child: Container(
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                   boxShadow: [BoxShadow(color:Colors.grey,
            blurRadius: 5.0,),],
                  borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                      Center(
                          child: Text(
                             "Call",
                              style: TextStyle(
                                  color: Colors.cyanAccent[400],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                              ),
                          ),
                      )
                  ],
              ),
          ),
      ),

               ) ]
          ),
      
    ),
      ]
    )
    ),
  );
}

Widget explore(){
  return Container(
    child:SingleChildScrollView(
      scrollDirection: Axis.horizontal,
          child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
          padding: EdgeInsets.all(15),
          height: 80,
          width: 80,
          
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color:Colors.grey,
            blurRadius: 1.0,),],
            borderRadius: BorderRadius.circular(20),
          ),
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Text('Contacts',style: TextStyle(color: Colors.cyanAccent[400],fontWeight: FontWeight.bold,fontSize: 25)),
          //     SizedBox(height:10),
          //     Text('Call your Close Ones',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w300,fontSize: 15)),
          //     SizedBox(height:30),
              

          //   ]
          // ),
      
    ),
    SizedBox(width:20),
    Container(
          padding: EdgeInsets.all(15),
          height: 80,
          width: 80,
          
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color:Colors.grey,
            blurRadius: 1.0,),],
            borderRadius: BorderRadius.circular(20),
          ),
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Text('Contacts',style: TextStyle(color: Colors.cyanAccent[400],fontWeight: FontWeight.bold,fontSize: 25)),
          //     SizedBox(height:10),
          //     Text('Call your Close Ones',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w300,fontSize: 15)),
          //     SizedBox(height:30),
              

          //   ]
          // ),
      
    ),
    SizedBox(width:20),
    Container(
          padding: EdgeInsets.all(15),
          height: 80,
          width: 80,
          
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color:Colors.grey,
            blurRadius: 1.0,),],
            borderRadius: BorderRadius.circular(20),
          ),
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Text('Contacts',style: TextStyle(color: Colors.cyanAccent[400],fontWeight: FontWeight.bold,fontSize: 25)),
          //     SizedBox(height:10),
          //     Text('Call your Close Ones',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w300,fontSize: 15)),
          //     SizedBox(height:30),
              

          //   ]
          // ),
      
    ),
    SizedBox(width:20),
    Container(
          padding: EdgeInsets.all(15),
          height: 80,
          width: 80,
          
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color:Colors.grey,
            blurRadius: 1.0,),],
            borderRadius: BorderRadius.circular(20),
          ),
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Text('Contacts',style: TextStyle(color: Colors.cyanAccent[400],fontWeight: FontWeight.bold,fontSize: 25)),
          //     SizedBox(height:10),
          //     Text('Call your Close Ones',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w300,fontSize: 15)),
          //     SizedBox(height:30),
              

          //   ]
          // ),
      
    ),
    SizedBox(width:20),
    Container(
          padding: EdgeInsets.all(15),
          height: 80,
          width: 80,
          
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color:Colors.grey,
            blurRadius: 1.0,),],
            borderRadius: BorderRadius.circular(20),
          ),
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Text('Contacts',style: TextStyle(color: Colors.cyanAccent[400],fontWeight: FontWeight.bold,fontSize: 25)),
          //     SizedBox(height:10),
          //     Text('Call your Close Ones',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w300,fontSize: 15)),
          //     SizedBox(height:30),
              

          //   ]
          // ),
      
    ),
    SizedBox(width:20),
    Container(
          padding: EdgeInsets.all(15),
          height: 80,
          width: 80,
          
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color:Colors.grey,
            blurRadius: 1.0,),],
            borderRadius: BorderRadius.circular(20),
          ),
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Text('Contacts',style: TextStyle(color: Colors.cyanAccent[400],fontWeight: FontWeight.bold,fontSize: 25)),
          //     SizedBox(height:10),
          //     Text('Call your Close Ones',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w300,fontSize: 15)),
          //     SizedBox(height:30),
              

          //   ]
          // ),
      
    ),
    SizedBox(width:20),
        ]
      ),
    )

  );
}

Widget card(){
   return Padding(
     padding: const EdgeInsets.all(10.0),
     child: Container(
          padding: EdgeInsets.all(15),
          height: 200,
          width: 400,
          
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color:Colors.grey,
            blurRadius: 5.0,),],
            borderRadius: BorderRadius.circular(20),
          ),
        child: Row(
          children: [
            Container(
              
              child: Image(image: AssetImage('assets/location.jpg'),fit: BoxFit.contain,),
            )
          ]
        ),
      
  ),
   );
}