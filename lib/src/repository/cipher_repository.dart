abstract class CipherRepository {
  String encrypt(String text, int shift, String alphabet);
  String decrypt(String text, int shift, String alphabet);
}