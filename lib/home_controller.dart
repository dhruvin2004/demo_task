import 'package:get/get.dart';

class HomeController extends GetxController {
  List<Map<String, dynamic>> list = [
    {
      'category': ['kids'],
      'title': "Title",
      'subTitle': "SubTitle"
    },
    {
      'category': ['kids', 'mens'],
      'title': "Title",
      'subTitle': "SubTitle"
    },
    {
      'category': ['kids', 'mens'],
      'title': "Title",
      'subTitle': "SubTitle"
    },
    {
      'category': ['kids', 'women', 'devil'],
      'title': "Title",
      'subTitle': "SubTitle"
    },
  ];

  Set<String> tempSet = {};
  List<String> tempList = [];


  void manageData() {
    tempList.add("All");
    for(int i=0; i<list.length; i++){

      for(int j=0; j<list[i]['category'].length; j++){
        String cat = list[i]['category'][j];
        tempSet.add(cat);
      }
    }
    tempList.addAll(tempSet);
    print("List: $tempSet");
    print("List Data: $tempList");

  }
}
