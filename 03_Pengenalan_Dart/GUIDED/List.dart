void main() {
  List<int> fixedList = List.filled(3, 0);

  fixedList[0] = 10;
  fixedList[1] = 20;
  fixedList[2] = 30;

  print('Fixed Length List: $fixedList');
}

void main() {
  List<int> growableList = [];

  growableList.add(10);
  growableList.add(20);
  growableList.add(30);

  print('growableList');

  growableList.add(50);
  growableList.add(70);
  growableList.add(90);

  print(growableList);

  growableList.remove(20);

  print(growableList);
}
