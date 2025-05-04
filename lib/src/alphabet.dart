/// Defines available alphabets for Caesar cipher.
enum Alphabet {
  /// English alphabet (A-Z)
  english(letters: "ABCDEFGHIJKLMNOPQRSTUVWXYZ"),

  /// Russian alphabet (А-Я including Ё)
  russian(letters: "АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ");

  /// The uppercase letters used in the alphabet
  final String letters;

  const Alphabet({required this.letters});
}
