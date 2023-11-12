import 'package:fingerprintauthdemo/app/app.locator.dart';
import 'package:fingerprintauthdemo/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();

  final LocalAuthentication auth = LocalAuthentication();
  bool isAuthenticating = false;

  // Function to handle biometric authentication
  Future<void> authenticateWithBiometrics() async {
    try {
      isAuthenticating = true;
      notifyListeners();
      bool authenticated = await auth.authenticate(
        localizedReason: 'Scan your fingerprint to authenticate',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
      isAuthenticating = false;

      if (authenticated) {
        // Successfully authenticated - proceed with logic (e.g., navigate to home)
        notifyListeners();
        navigateToHome();
      }
    } on PlatformException catch (e) {
      // Handle authentication errors
      debugPrint(e.toString());
      isAuthenticating = false;
      notifyListeners();
    }
  }

  navigateToRegister() {
    navigationService.navigateToRegisterView();
  }

  navigateToHome() {
    navigationService.navigateToHomeView();
  }
}
