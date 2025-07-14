class OrderedStream {
  late List<String>values;
  int i = 0;  
  OrderedStream(int n) {
   values = List.filled(n,'');
  }
  List<String> insert(int idKey, String value) {
   idKey -= 1;
   values[idKey] = value;
   if(idKey>i)return[];
   while(i<values.length && values [i].isNotEmpty){
    i++;
   } 
   return values.sublist(idKey,i);
  }
}
void main() {
  var stream = OrderedStream(5);

  print(stream.insert(3, "ccccc"));
  print(stream.insert(1, "aaaaa"));
  print(stream.insert(2, "bbbbb"));
  print(stream.insert(5, "eeeee"));
  print(stream.insert(4, "ddddd"));
}

// This Dart code implements an OrderedStream class designed to receive insertions with an ID and value,
// and sequentially output chunks of data as they become available in order.
// The OrderedStream constructor initializes an array to hold n elements and a pointer i to the next expected ID (zero-indexed).
// The insert method places the incoming value at the corresponding idKey position. 
// If the insertion completes a contiguous sequence starting from the current expected index i,
// the method advances i past all newly available elements and returns the list of these ordered elements; otherwise, 
// it returns an empty list, waiting for the stream to catch up.