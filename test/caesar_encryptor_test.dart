import 'package:test/test.dart';
import 'package:caesar_encryptor/caesar_encryptor.dart';

void main() {
  group('English Caesar', () {
    final encryptor = CaesarEncryptor(shift: 3, alphabet: Alphabet.english);

    test('Encrypts English', () {
      expect(encryptor.encrypt('Hello'), equals('Khoor'));
    });

    test('Decrypts English', () {
      expect(encryptor.decrypt('Khoor'), equals('Hello'));
    });
  });

  group('Russian Caesar', () {
    final encryptor = CaesarEncryptor(shift: 5, alphabet: Alphabet.russian);

    test('Encrypts Russian', () {
      expect(encryptor.encrypt('Привет'), equals('Фхнжйч'));
    });

    test('Decrypts Russian', () {
      expect(encryptor.decrypt('Фхнжйч'), equals('Привет'));
    });
  });
}
