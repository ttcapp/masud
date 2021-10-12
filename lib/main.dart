import 'package:flutter/material.dart';
import 'package:masud/second_page.dart';

void main() {
  runApp(AmarApp());
}
String btnText1="Ayan Tab";
Color btnColor1=Colors.indigo;
bool img1Visibility=false;

class AmarApp extends StatelessWidget {
  const AmarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:MyHomePage() ,
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Masud Hasan", style:
        TextStyle(color: Colors.deepPurple),),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              ElevatedButton(
                  onPressed:(){
                   Navigator.push(context,MaterialPageRoute
                     (builder: (context)=>SecondPage()))
                  },
                  child: Text("Go To Second page")
              ),

              SizedBox(
                height: 10,
              ),
              RaisedButton(
                  color: btnColor1,
                  child: Text(btnText1, style:
                  TextStyle(color: Colors.pink,
                      fontWeight: FontWeight.bold, fontSize: 40),),
                  onPressed: () {
                    setState(() {
                      btnText1 = "Masud Look";
                      btnColor1 = Colors.brown;
                      img1Visibility = true;
                    });
                  }),
              SizedBox(
                height: 10,
              ),
              Visibility(
                  visible: img1Visibility,
                  child: Image.network(
                      "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_960_720.jpg")
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,

              child: Row(
                children: [
                  Container(
                    height: 200,
                      width: 250,
                      child: Image.asset("assets/images/download.jpg")
                  ),
                  Container(
                      height: 200,
                      width: 250,
                      child: Image.asset("assets/images/download.jpg")
                  ),
                  Container(
                      height: 200,
                      width: 250,
                      child: Image.asset("assets/images/download.jpg")
                  ),
                  Container(
                      height: 200,
                      width: 250,
                      child: Image.asset("assets/images/download.jpg")
                  ),
                  Container(
                      height: 200,
                      width: 250,
                      child: Image.asset("assets/images/download.jpg")
                  ),
                ],
              ),
              )
            ],
          ),
        ),
      ),
    );
  }

}