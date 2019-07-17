import 'package:sellam/routes/home/home.dart';
import 'package:flutter/material.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
class SellamApp extends StatelessWidget {
  // This widget is the root of your application.
  final SellamAppSession child;
  const SellamApp(this.child);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sellam',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Raleway'
      ),
      home: HomePage(title: 'Sellam'),
      onGenerateRoute: _getRoute,
      navigatorObservers: [routeObserver],
    );
  }
}

class SellamAppSession extends InheritedWidget {
  final bool isFirstUse;
  final bool userLoggedIn;
  final String password;
  final Widget child;

  SellamAppSession ({this.isFirstUse = false, this.password = 'password', this.userLoggedIn = false, this.child,}) : super(child : child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static SellamAppSession of(BuildContext context) => 
    context.inheritFromWidgetOfExactType(SellamAppSession);
}
  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name == '/home') {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => HomePage(),
        fullscreenDialog: true,
      );
    }
  }
