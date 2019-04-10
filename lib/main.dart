import 'package:flutter/material.dart';
import 'package:blank_app/pages/home_page.dart';
import 'package:redux/redux.dart';                              // new
import 'package:flutter_redux/flutter_redux.dart'; 
import 'package:blank_app/models/app_state.dart';
import 'package:blank_app/reducers/app_reducer.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  String title = 'Redux-BoilerPlate';

  final store = new Store<AppState>(                            // new
    appReducer,                                                 // new
    initialState: new AppState(),                               // new
    middleware: [],                                             // new
  );


  @override
  Widget build(BuildContext context) {
    return new StoreProvider(                                   // new
      store: store,                                             // new
      child: new MaterialApp(
          title: title,
          home: new HomePage(title),
      ),
    );
  }
}