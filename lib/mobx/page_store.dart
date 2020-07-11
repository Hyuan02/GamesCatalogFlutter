import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import '../models/page_element.dart';

part 'page_store.g.dart';
class PageStore = PageStoreBase with _$PageStore;

abstract class PageStoreBase with Store{


  @observable
  PageElement currentPage;

  @observable
  int counter = 0;

  @observable 
  bool isLoaded = true;

  final String url = "https://api.rawg.io/api/games";

  @action
  Future changePage() async{
    isLoaded = false;
    var response = await http.get(url);
    currentPage = PageElement.fromJson(jsonDecode(response.body));
    isLoaded = true;
    // print(isLoaded.toString());
  }

}