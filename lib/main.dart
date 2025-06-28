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

void main() {
  runTask1();
}