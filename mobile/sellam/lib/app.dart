import 'package:flutter/material.dart';

import 'package:sellam/main.dart';
import 'package:sellam/models/user.dart';
import 'package:sellam/routes/routes.dart';
final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class SellamApp extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sellam',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Raleway',
        appBarTheme: AppBarTheme(
          elevation: 1,
          color: Colors.white,
          iconTheme: IconThemeData(
            size: 24,
            color: Color(0xFFff6f00)
          ),
          actionsIconTheme: IconThemeData(
            size: 24,
            color: Color(0xFFff6f00)
          ),
        )
      ),
      onGenerateRoute: _getRoute,
      navigatorObservers: [routeObserver],
    );
  }
}

class SellamAppSession extends InheritedWidget {
  User user;
  final Widget child;
  final bool isFirstUse;

  SellamAppSession ({this.user, this.isFirstUse = true, this.child,}) : super(child : child);

  bool get userLoggedIn => ((user.mail == '') | (user.name == '') | (user.password == '')) ? false : true;

  void signIn(BuildContext context) {
      user.name = 'Mbassi Japhet';
      user.mail = 'mbassijaphet@gmail.com';
      user.password = 'password';
      Navigator.of(context).pop();
  }

  void signOut(BuildContext context) {
      user.name = '';
      user.mail = '';
      user.password = '';
      Navigator.of(context).pop();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
  // bool updateShouldNotify(InheritedWidget oldWidget){ print('Noftified') ; return true;}

  static SellamAppSession of(BuildContext context) => 
    context.inheritFromWidgetOfExactType(SellamAppSession);
}
  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name == HomePage.route) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: HomePage(), user:USER),
        fullscreenDialog: true,
      );
    }if (settings.name == ProfilePage.route) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: ProfilePage(), user: USER),
        fullscreenDialog: true,
      );
    }if (settings.name == SellPage.route) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: SellPage(), user: USER),
        fullscreenDialog: true,
      );
    }if (settings.name == PurchasePage.route) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: PurchasePage(), user: USER),
        fullscreenDialog: true,
      );
    }if (settings.name == OrdersPage.route) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: OrdersPage(), user: USER),
        fullscreenDialog: true,
      );
    }if (settings.name == OrderDetailsPage.route) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: OrderDetailsPage(), user: USER),
        fullscreenDialog: true,
      );
    }else if (settings.name == FavoriteProducts.route) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: FavoriteProducts(), user: USER),
        fullscreenDialog: true,
      );
    }else if (settings.name == DescriptionPage.route) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: DescriptionPage(), user: USER),
        fullscreenDialog: true,
      );
    }else if (settings.name == NotificationsPage.route) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: NotificationsPage(), user: USER),
        fullscreenDialog: true,
      );
    }else if (settings.name == SignInPage.route) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: SignInPage(), user: USER),
        fullscreenDialog: true,
      );
    }else if (settings.name == SignUpPage.route) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: SignUpPage(), user: USER),
        fullscreenDialog: true,
      );
    }else if (settings.name == HelpPage.route) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: HelpPage(), user: USER),
        fullscreenDialog: true,
      );
    }else if (settings.name == AboutPage.route) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: AboutPage(), user: USER),
        fullscreenDialog: true,
      );
    }else{
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: HomePage(), user:USER),
        fullscreenDialog: true,
      );
    }
  }
