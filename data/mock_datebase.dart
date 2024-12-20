import '../models/password_entry.dart';
import 'datebase_repository.dart';

class MockDatabase implements DatabaseRepository{
  final List<PasswordEntry> _passwords = [];

  @override
  void addPassword(PasswordEntry password) {
    _passwords.add(password);
    print("Passwort '${password.title}' wurde hinzugefügt.");
  }

  @override
  List<PasswordEntry> getPasswords() {
    return _passwords;
  }

  @override
  void deletePassword(PasswordEntry password) {
    _passwords.remove(password);
    print("Passwort '${password.title}' wurde gelöscht.");
  }
}
