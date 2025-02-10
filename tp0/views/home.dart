import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../viewmodels/counter_view_models.dart';

import 'package:provider/provider.dart';
import '/widgets/custom_view_counter.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: (context) => CounterViewModel(),
      child: CustomCounter(),
    );
  }

}