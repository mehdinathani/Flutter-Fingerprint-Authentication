import 'package:fingerprintauthdemo/views/home_view.dart';
import 'package:fingerprintauthdemo/views/login_view.dart';
import 'package:fingerprintauthdemo/views/register_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: LoginView, initial: true),
    MaterialRoute(page: RegisterView),
  ],
  dependencies: [
    Singleton(classType: NavigationService),
  ],
)
class App {}
