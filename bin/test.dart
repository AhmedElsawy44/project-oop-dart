// Dart Exercises: From Easy to Advanced (No OOP)

void splitStringToList() {
  final input = "flutter";
  final chars = input.split('');
  print(chars);
}

void filterOddNumbers() {
  final numbers = List.generate(10, (i) => i);
  final odds = numbers.where((n) => n.isOdd);
  print("Odd numbers: $odds");
}

void checkNumberSign() {
  final number = 0;
  final status = number > 0 ? "Positive" : number < 0 ? "Negative" : "Zero";
  print(status);
}

void multiplyListElements() {
  final nums = [2, 3, 4];
  final product = nums.reduce((a, b) => a * b);
  print("Product: $product");
}

void countConsonants() {
  final input = "Dart Programming Language";
  final vowels = {'a', 'e', 'i', 'o', 'u'};
  final count = input
      .toLowerCase()
      .split('')
      .where((c) => RegExp(r'[a-z]').hasMatch(c) && !vowels.contains(c))
      .length;
  print("Consonants count: $count");
}

void extractAndSumDigits() {
  final input = "abc1234xyz";
  final sum = input
      .split('')
      .where((c) => int.tryParse(c) != null)
      .map(int.parse)
      .reduce((a, b) => a + b);
  print("Sum of digits: $sum");
}

void removeListDuplicates() {
  final items = ["apple", "banana", "apple", "mango", "banana"];
  final unique = items.toSet().toList();
  print("Unique items: $unique");
}

void characterFrequencyCounter() {
  final str = "aabbccddeea";
  final freq = <String, int>{};
  for (var char in str.split('')) {
    freq[char] = (freq[char] ?? 0) + 1;
  }
  freq.forEach((k, v) => print("$k: $v"));
}

Future<String> mockNetworkCall(int delay, String value) async {
  await Future.delayed(Duration(milliseconds: delay));
  return value;
}

Future<void> fetchMultipleResults() async {
  final results = await Future.wait([
    mockNetworkCall(500, "A"),
    mockNetworkCall(800, "B"),
    mockNetworkCall(300, "C"),
  ]);
  print("Results: ${results.join(' | ')}");
}

Future<List<String>> simulateUsernames() async {
  await Future.delayed(Duration(milliseconds: 500));
  return ["mohamed", "ali", "sara", "nora", "mina"];
}

Future<void> groupNamesByFirstLetter() async {
  final users = await simulateUsernames();
  final grouped = <String, List<String>>{};
  for (final user in users) {
    final letter = user[0];
    grouped[letter] = (grouped[letter] ?? [])..add(user);
  }
  grouped.forEach((k, v) => print("$k: ${v.join(', ')}"));
}

void main() async {
  splitStringToList();
  filterOddNumbers();
  checkNumberSign();
  multiplyListElements();
  countConsonants();
  extractAndSumDigits();
  removeListDuplicates();
  characterFrequencyCounter();
  await fetchMultipleResults();
  await groupNamesByFirstLetter();
}
