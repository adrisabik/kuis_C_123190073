import 'package:flutter/material.dart';
import 'package:kuis/data_dummy.dart';

class DetailPage extends StatelessWidget {
  final DataMovie product;

  const DetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Container(
          padding: EdgeInsets.all(20),
        child: Center(
          child:Column(
            children: [
              Image.network(
                  product.poster_path,
                  width: 200
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Watch Trailer",
                ),
              ),
              Text(
                product.title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                product.release_date,
                style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
              ),
              Text("Description", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Text(
                product.overview,
                style: TextStyle(fontSize: 14),
              ),

            ],
          )
        )
      )
    );
  }

  // Widget _listView(){
  //
  // }
}