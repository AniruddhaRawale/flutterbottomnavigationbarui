import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Bottom Navigation Bar",
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.red,
       // buttonColor: Colors.red[300]
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar",
        style: TextStyle(
          fontFamily: 'title',
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      //bottomsheet is used to display text at bottom of screen
    /*  bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Fuck Bitches Get Money"),
      ),
*/
//    floatingActionButton: IconButton(
//        icon: Icon(Icons.message,
//        color: Colors.red,
//                 ),
//        //splash color
//        //color that will produce after pressing the button
//        splashColor: Colors.grey,
//        onPressed: (){}),
      //to change location of floating action button
      //docked means attached
      //float means floating button
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white70,
        elevation: 20.00,
        child: Row(
          children: <Widget>[
            //we used expanded so that bottom bar should
            //expanded to the total width of screen
            //we used Sized box because we cannot change size of expanded
            //directly
            Expanded(
                child: SizedBox(
                  height: 60.00,
                  child: InkWell(
                    onTap: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.search
                        ),
                        Text("Search")
                      ],
                    ),
                  ),
                )),
            Expanded(
                child: SizedBox(
                  height: 60.00,
                  child: InkWell(
                    onTap: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                            Icons.home
                        ),
                        Text("home")
                      ],
                    ),
                  ),
                )),
            Expanded(
                child: SizedBox(
                  height: 60.00,
                  child: InkWell(
                    onTap: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                            Icons.photo_camera
                        ),
                        Text("camera")
                      ],
                    ),
                  ),
                )),

          ],
        ),
      ),

    );
  }
}
