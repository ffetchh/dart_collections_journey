import 'dart:math';

void runTask1() {
  print('------------------- Task 1 -------------------');

  // 1. Створення списку зі 100 випадкових чисел від 0 до 100
  List<int> numbers = List.generate(100, (_) => Random().nextInt(101));
  print('Список numbers: $numbers');

  // 2. Виведення 65-го елемента
  print('65-й елемент: ${numbers[64]}');

  // 3. Вставка 1000000000 на 50-ту позицію (індекс 49)
  numbers.insert(49, 1000000000);

  // 4. Видалення елементів зі значеннями: 24, 45, 66, 88
  numbers.removeWhere((e) => e == 24 || e == 45 || e == 66 || e == 88);

  // 5. Сума чисел, що діляться на 3 (через for)
  int sumDivisibleBy3 = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) {
      sumDivisibleBy3 += numbers[i];
    }
  }
  print('Сума чисел, що діляться на 3: $sumDivisibleBy3');

  // 6. Створення нового списку temp з парних чисел
  List<int> temp = [];
  for (var number in numbers) {
    if (number % 2 == 0) {
      temp.add(number);
    }
  }
  print('Довжина списку temp (парні числа): ${temp.length}');
}

import 'names.dart';

void runTask2() {
  print('------------------- Task 2 -------------------');

  // Створення множин
  Set<String> uniqueNames1 = Set.from(ukrainianNames1);
  Set<String> uniqueNames2 = Set.from(ukrainianNames2);

  // 1. Перетин (спільні імена)
  Set<String> intersection = uniqueNames1.intersection(uniqueNames2);
  print('Кількість спільних імен: ${intersection.length}');

  // 2. Унікальні в першому списку
  Set<String> onlyInFirst = uniqueNames1.difference(uniqueNames2);
  print('Імена, які є в першому, але відсутні в другому:');
  print(onlyInFirst);

  // 3. Унікальні в другому списку
  Set<String> onlyInSecond = uniqueNames2.difference(uniqueNames1);
  print('Імена, які є в другому, але відсутні в першому:');
  print(onlyInSecond);
}

void runTask3() {
  print('------------------- Task 3 -------------------');

  final wordGen = WordGenerator();

  // 1. Створення списку із 50 випадкових слів (іменників)
  List<String> nounsList = List.generate(50, (_) => wordGen.randomNoun());
  print('Список іменників:');
  print(nounsList);

  // 2. Створення Map: слово → кількість символів
  Map<String, int> nounsMap = {
    for (var word in nounsList) word: word.length,
  };

  // 3. Вибірка парних слів у нову Map
  Map<String, int> tempNouns = {};
  nounsMap.forEach((key, value) {
    if (value % 2 == 0) {
      tempNouns[key] = value;
    }
  });

  // 4. Вивід ключів зі tempNouns
  print('Слова з парною довжиною:');
  print(tempNouns.keys);
}

void main() {
  runTask1();
  runTask2();
  runTask3();
}