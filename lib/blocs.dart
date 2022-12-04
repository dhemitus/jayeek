import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jayeek/modules/modules.dart';

class Blocs {
  static MultiBlocProvider blocsList (Widget child, GlobalKey<NavigatorState> key) {
    return MultiBlocProvider(
        providers: [
          NavigationRoute.bloc(key),
        ],
        child: child
    );
  }

}
