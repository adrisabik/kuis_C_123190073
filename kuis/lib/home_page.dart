import 'package:flutter/material.dart';
import 'package:kuis/data_dummy.dart';
import 'package:kuis/detail_page.dart';

class HomePage extends StatelessWidget {
  final String username;
  var dataProduct = getDataMovie;

  HomePage({
    Key? key,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        child: _gridView(),
      ),
    );
  }

  Widget _listView() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return _createCard(dataProduct[index], context);
      },
      itemCount: dataProduct.length,

    );
  }

  Widget _gridView() {
    return GridView.builder(
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return _createCard(dataProduct[index], context);
      },
      itemCount: dataProduct.length,

    );
  }

  Widget _createCard(DataMovie product, BuildContext context) {
    return Card(
        child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return DetailPage(product: product);
          }));
        },
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Image.network(
                product.poster_path,
                width: 150
              ),
              Text(
                product.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                product.release_date,
                style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DetailPage(product: product);
                }));
              }, child: Text("Details >>")),

            ],
          ),
        )
      )
    );
  }

  Widget _separator() {
    return Container(
      color: Colors.greenAccent,
      child: Text(
        'Separator',
        style: TextStyle(fontSize: 10),
      ),
    );
  }
}
