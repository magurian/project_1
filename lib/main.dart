
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/models/Product.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({Key key}) : super (key: key) ;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
        backgroundColor: Colors.white,
      ),
      home: MyHomePage( 'My Recipes' ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage ({Key key}) : super (key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height - 85,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              )
          ),
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            children:< Widget> [
              Container(
                child: ListTile(
                  title: Text('My Recipes' ,
                    style : TextStyle (fontSize: 24 , fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.search),
                ),
              ) ,
      @override
      Widget build(BuildContext context) {
              final product = Prodider.of<Product>(context, lister : false) ;

              return Container (
                width :150 ,
                padding : const EdgeInsets.all(20.0),
                margin : const EdgeInsets.all(5.0),
                decoration : BoxDecoration(
                  borderRadius :BorderRadius.circular(15.0),
                  color : Color(int.parse(product.color)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch ,
                  chilren: <Widget>[
                    Column (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        Container(
                          height : 160 ,
                          decoration : BoxDecoration (
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(product.imgUrl)
                                fit: BoxFit.cover,
                            ) ,
                          ) ,
                        ) ,
                          Container(
                            child: Text(
                                ' ${product.title} ' ,
                              style : TextStyle(fontSize: 16 , fontWeight :FontWeight.bold),
                            )
                          )
                        ] ,
                    ) ,
                  ] ,
                ),
              ),
    }
    ],
          ),

        ),

      ),

    );
  }

}