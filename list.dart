void main() {
  List test = new List.filled(0, 0, growable: true);
  test.addAll([10,20,30,40]);
  // test.add("Siva");
  // test.add(7);
  // test.add("Sankar");
  for(int i = 0; i<test.length; i++) {
    print("Ele ${i} of ${test[i]}");
  }
}