import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import '../mobx/page_store.dart';
import '../models/page_element.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageStore = PageStore();
    print('Printando algo');
    pageStore.changePage();
    return Observer(
      builder:(_)=>  !pageStore.isLoaded
          ? Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ) :
      Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Seja bem vindo!')),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(pageStore.currentPage.results.length, (index){
            print(pageStore.currentPage.toString());
            return Item(result: pageStore.currentPage.results[index]);
          }
        )
      )
      )
    )
    ); 
  }
}


class Item extends StatelessWidget {
  Item({Key key, this.result}) : super(key: key);
  final Results result;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.red.withAlpha(30),
        onTap: (){
          print('Tapped');
        },
        child: Container(
          child: SizedBox(
            height: 5,
            child: Image.network(result.backgroundImage)
          )
        )
      )
    );
  }
}
