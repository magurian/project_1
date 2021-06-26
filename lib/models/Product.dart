import 'dart:collection';

import 'package:flutter/foundation.dart';

class Product {
  final String id ;
  final String name ;
  final String picture ;
  final String description ;
  final String color ;

  Product({
    @required this.id,
    @required this.name,
    @required this.picture,
    @required this.description ,
    @required this.color ,
  }) ;
}

class ProductDataProvider with ChangeNotifier {
  List<Product> _items = [
    Product(
        id:  ' 1 ' ,
        name:  "Crunchy croissants",
        picture: "https://images.unsplash.com/photo-1555507036-ab1f4038808a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1.jpg",
        description: "Buttery, flaky pastry named for its crescent shape." ,
        color: "0xFFFFF59D" ,
    ),
    Product(
        id:' 2' ,
        name: "Grilled eggplant",
        picture: "https://images.unsplash.com/photo-1591813144634-eebdeab865e1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1.jpg",
        description: "Tender with a rich, complex flavor when cooked.",
        color: "0xFFBBDEFB" ,
    ),
    Product(
        id: ' 3 ',
        name: "Tangerine salad",
        picture: "https://images.unsplash.com/photo-1482012792084-a0c3725f289f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1.jpg",
        description: "Peak tangerine season lasts from autumn to spring.",
        color: "0xFFFFF59D" ,
    ),
    Product(
        id: ' 4 ',
        name: "Pomegranate juice",
        picture:  "https://images.unsplash.com/photo-1606914998137-d9b33982be02?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1.jpg",
        description: "A superfood for a good skin, hair and health.",
        color: "0xFFBBDEFB" ,
    ),
    Product(
        id: ' 5 ',
        name: "Chili salsa",
        picture: "https://images.unsplash.com/photo-1599297915243-ba242cff4073?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1.jpg",
        description: "Heat up any taco night with minimal preparation.",
        color: "0xFFFFF59D" ,
    ),
    Product(
        id: ' 6 ',
        name: "Peach empanada",
        picture: "https://images.unsplash.com/photo-1532704868953-d85f24176d73?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1.jpg",
        description: "Easy light lunch from juicy peaches.",
        color: "0xFFBBDEFB" ,
    ),
    Product(
        id: ' 7' ,
        name: "Steak with vegetables",
        picture: "https://images.unsplash.com/photo-1544025162-d76694265947?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1.jpg",
        description: "Tasty steak with a load of season vegetables.",
        color: "0xFFFFF59D" ,
    ),
    Product(
        id: ' 8 ',
        name:  "Summer brunch",
        picture: "https://images.unsplash.com/photo-1504754524776-8f4f37790ca0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1.jpg",
        description: "A variety of easy to cook snacks for a summer brunch.",
        color: "0xFFBBDEFB" ,
    ),
    Product(
        id: ' 9',
        name: "Chips",
        picture: "https://images.unsplash.com/photo-1599490659213-e2b9527bd087?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1.jpg",
        description: "Healthy snack with a bit of cheese."
        color:"0xFFFFF59D" ,
    ),
    Product(
        id:' 10 ',
        name: "Apple juice",
        picture: "https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1.jpg",
        description: "Fresh easy to cook healthy alternative for sweet beverages.",
        color: "0xFFBBDEFB" ,
    ),

  ];
  UnmodifiableListView<Product> get items => UnmodifiableListView(_items) ;

  Product getElementById(String id)
    => _items.singleWhere((value) => value.id ==id) ;


}