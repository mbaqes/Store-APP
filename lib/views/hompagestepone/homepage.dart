import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class HomePageStepOne extends StatefulWidget {
  const HomePageStepOne({super.key});

  @override
  State<HomePageStepOne> createState() => _HomePageStepOneState();
}

class _HomePageStepOneState extends State<HomePageStepOne> {
  @override
  void initState() {
    // TODO: implement initState111
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies22
    super.didChangeDependencies();
  }

  Future<StoreModelone> getPrudacts() async {
    var uriGet = Uri.parse("https://dummyjson.com/products");
    var response = await http.get(uriGet);
    var json = jsonDecode(response.body);
    var store = StoreModelone.fromJson(json);

    return store;
  }

  String textone = "";
  String texttwo = "";
  @override
  Widget build(BuildContext context) {
    print("==================BuildContext======================33====");
    return Scaffold(
        appBar: AppBar(title: Text("تقدروها شباب ربي يوفقكم عزو اخوكم")),
        body: FutureBuilder(
            future: getPrudacts(),
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.products!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Row(
                        children: [
                          SizedBox(
                            height: 80,
                            width: 80,
                            child: Image.network(
                                snapshot.data!.products![index].thumbnail!),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(snapshot.data!.products![index].brand
                                    .toString())
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              }
              if (snapshot.hasError) {
                return Text(
                  snapshot.error.toString(),
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                );
              }

              return CircularProgressIndicator();
            })));
  }
}

class StoreModelone {
  List<Productsone>? products;
  int? total;
  int? skip;
  int? limit;
  StoreModelone({this.products, this.total, this.skip, this.limit});

  StoreModelone.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Productsone>[];
      json['products'].forEach((v) {
        products!.add(new Productsone.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['skip'] = this.skip;
    data['limit'] = this.limit;
    return data;
  }
}

class Productsone {
  int? id;
  String? title;
  String? description;
  double? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<String>? images;

  Productsone(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.discountPercentage,
      this.rating,
      this.stock,
      this.brand,
      this.category,
      this.thumbnail,
      this.images});

  Productsone.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = double.parse(json['price'].toString());
    discountPercentage = double.parse(json['discountPercentage'].toString());
    rating = double.parse(json['rating'].toString());
    stock = json['stock'];
    brand = json['brand'];
    category = json['category'];
    thumbnail = json['thumbnail'];
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['price'] = this.price;
    data['discountPercentage'] = this.discountPercentage;
    data['rating'] = this.rating;
    data['stock'] = this.stock;
    data['brand'] = this.brand;
    data['category'] = this.category;
    data['thumbnail'] = this.thumbnail;
    data['images'] = this.images;
    return data;
  }
}
