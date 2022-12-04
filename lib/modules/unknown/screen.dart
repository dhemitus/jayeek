import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jayeek/modules/modules.dart';
import 'package:jayeek/widgets/widgets.dart';

class UnknownScreen extends StatelessWidget {

  const UnknownScreen({Key? key}) : super(key: UnknownRoute.key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(

      builder: (BuildContext context, NavigationState state) {
        return FrontPage(
          child: OptionForm(
            onActive: () => context.read<NavigationBloc>().add(const OnGo(path: ActivateRoute.path)),
            onForget: () => context.read<NavigationBloc>().add(const OnGo(path: ForgetPasswordRoute.path)),
          )
        );
      }
    );
  }
}
