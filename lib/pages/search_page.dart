

import 'package:flutter/material.dart';

import '../constant/search_json.dart';
import '../theme/colors.dart';
import '../widgets/search_category_item.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: const <Widget>[


      ],
    ));
  }
}


