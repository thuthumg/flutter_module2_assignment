void main(){

  Map<String,int?> sampleMap =
      {
        "str1": null,
        "str2":0,
        "str3":null,
        "str4":40,
        "str5": null,
        "str6":60,
        "str7":2,
        "str8":5,
      };
  sampleMap.removeWhere((key, value) => value == null);

  List<String> stLists = <String>[];
  stLists.addAll(sampleMap.keys);

  print("String result = ${stLists.join(",")}");

}