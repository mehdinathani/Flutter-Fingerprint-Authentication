import 'package:fingerprintauthdemo/app/app.locator.dart';
import 'package:fingerprintauthdemo/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RegisterViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();

  navigateToRegister() {
    navigationService.navigateToLoginView();
  }
}
