import '../models/password_entry.dart';

abstract class DatabaseRepository {
  void addPassword(PasswordEntry password);
  List<PasswordEntry> getPasswords();
  void deletePassword(PasswordEntry password);
}
