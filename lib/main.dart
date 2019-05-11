import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mail_app/entities/User.dart';
import 'package:mail_app/redux/reducers/app_reducer.dart';
import 'package:mail_app/widgets/containers/connected_auth_gatekeeper.dart';
import 'package:mail_app/widgets/home_view.dart';
import 'package:redux/redux.dart';

void main() {
  final store =
      Store<AppState>(appReducer, initialState: AppState(user: User()));

  runApp(MyApp(store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp(this.store);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: ConnectedAuthGatekeeper(
          child: HomeView(),
        ),
      ),
    );
  }
}
