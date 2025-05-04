import 'package:caesar_encryptor/caesar_encryptor.dart';

void main() {
  // Create an encryptor for the English alphabet with a shift of 3
  final englishEncryptor = CaesarEncryptor(
    shift: 3,
    alphabet: Alphabet.english,
  );

  // Original English text
  final englishText = 'Hello World';

  // Encrypt the text
  final encryptedEnglish = englishEncryptor.encrypt(englishText);

  // Decrypt the text back to original
  final decryptedEnglish = englishEncryptor.decrypt(encryptedEnglish);

  // Print the results
  print('🔤 English:');
  print('Original:  $englishText');
  print('Encrypted: $encryptedEnglish');
  print('Decrypted back: $decryptedEnglish\n');

  // Create an encryptor for the Russian alphabet with a shift of 5
  final russianEncryptor = CaesarEncryptor(
    shift: 5,
    alphabet: Alphabet.russian,
  );

  // Original Russian text
  final russianText = 'Привет Мир';

  // Encrypt the Russian text
  final encryptedRussian = russianEncryptor.encrypt(russianText);

  // Decrypt the text back to original
  final decryptedRussian = russianEncryptor.decrypt(encryptedRussian);

  // Print the results
  print('🔤 Russian:');
  print('Original:  $russianText');
  print('Encrypted: $encryptedRussian');
  print('Decrypted back: $decryptedRussian');
}
