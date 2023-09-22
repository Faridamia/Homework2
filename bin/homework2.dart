import 'dart:ffi';
import 'dart:io';

void main() {
  Map<String, double> exchangeRates = {
    'USD': 84.5,
    'EUR': 98.2,
    'GBP': 115.7,
    'JPY': 0.761,
    'CNY': 13.1,
    'RUB': 1.14,
  };
  print('Курсы обмена:');
  exchangeRates.forEach((currency, rate) {
    print('$currency: Покупка - $rate, Продажа - ${rate - 1}');
  });
  print('\nВыберите операцию:');
  print('1. Обмен сомов на другую валюту');
  print('2. Обмен другой валюты на сомы');
  int operation = int.parse(stdin.readLineSync()!);

  if (operation == 1) {
    print('Выберите валюту для обмена:');
    exchangeRates.keys.forEach((currency) {
      print(currency);
    });
  }
}
