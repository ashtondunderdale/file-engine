import 'models/profile.dart';
import 'services/database.dart';

List<Profile> profiles = [
  Profile(name: "Current", balance: 5625.49, accountNumber: "60290155", bank: "Santander", accounts: []),
];

Profile? activeProfile;

Future<void> initializeProfile() async {
  String yourProfileId = "testProfileID";

  activeProfile = await DatabaseService.loadProfile(yourProfileId);

  if (activeProfile != null) {
    print("Active profile set successfully.");
  } else {
    print("Failed to load profile.");
  }
}
