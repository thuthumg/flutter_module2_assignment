void main(){
  Map<String,int> sampleMap = {
    "key1": 100,
    "key2":150,
    "key3":200,
    "key4":250,
    "key5":300,
    "key6":350,
    "key7":10000,
    "key8":450,
    "key9":23000,
    "key10":550
  };

 int? result =  sampleMap.values
      .where((element) => element >= 10000)
      .reduce((value, element) => value + element);

 print("Q2 result = $result");
}