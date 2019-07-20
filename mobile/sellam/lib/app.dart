import 'package:flutter/material.dart';

import 'package:sellam/main.dart';
import 'package:sellam/models/user.dart';
import 'package:sellam/routes/description/description.dart';
import 'package:sellam/routes/home/home.dart';
import 'package:sellam/routes/favorites/favorite_products.dart';
import 'package:sellam/routes/signin/signin.dart';
import 'package:sellam/routes/signup/signup.dart';
import 'package:sellam/routes/notifications/notifications.dart';

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
  bool userLoggedIn;
  final bool isFirstUse;

  SellamAppSession ({this.user, this.isFirstUse = false, this.userLoggedIn = false, this.child,}) : super(child : child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static SellamAppSession of(BuildContext context) => 
    context.inheritFromWidgetOfExactType(SellamAppSession);
}
  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name == '/home') {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: HomePage(), user:user),
        fullscreenDialog: true,
      );
    }else if (settings.name == '/favorites') {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: FavoriteProducts(), user: user),
        fullscreenDialog: true,
      );
    }else if (settings.name == '/description') {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: DescriptionPage(), user: user),
        fullscreenDialog: true,
      );
    }else if (settings.name == '/notifications') {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: NotificationsPage(), user: user),
        fullscreenDialog: true,
      );
    }else if (settings.name == '/signin') {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: SignInPage(), user: user),
        fullscreenDialog: true,
      );
    }else if (settings.name == '/signup') {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: SignUpPage(), user: user),
        fullscreenDialog: true,
      );
    }else{
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SellamAppSession(child: HomePage(), user:user),
        fullscreenDialog: true,
      );
    }
  }
