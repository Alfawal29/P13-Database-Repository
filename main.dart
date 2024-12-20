
import 'data/mock_datebase.dart';
import 'models/password_entry.dart';

void main() {
  final database = MockDatabase();

  //Passwort hinzufügen
  final password1 = PasswordEntry(title: "Gmail", password: "12345");
  database.addPassword(password1);

  // Alle Passwörter abrufen
  final passwords = database.getPasswords();
  print("Alle gespeicherten Passwörter:");
  for (var entry in passwords) {
    print("- ${entry.title}: ${entry.password}");
  }

  // Passwort löschen
  database.deletePassword(password1);
}
