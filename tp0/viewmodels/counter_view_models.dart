
import 'package:flutter/cupertino.dart';

import '../models/counter_model.dart';
import 'package:flutter/cupertino.dart';

import '../viewmodels/counter_view_models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/widgets/custom_view_counter.dart';


class CounterViewModels extends ChangeNotifier {
  final CounterModel counterModel = CounterModel();

  void incrementerCounter() {
    counterModel.incrementCounter();
    notifyListeners();
  }

  void decrementerCounter() {
    counterModel.decrementCounter();
    notifyListeners();
  }

  int getCounter() {
    return counterModel.getCounter();
  }

}