import 'dart:async';

import 'package:connect_printers/connect_printers.dart';
import 'package:connect_printers/src/model/connect_printers_model.dart';

class ConnectPrintersContoller {
  static ConnectPrintersContoller? _instance;
  ConnectPrintersContoller._();
  static ConnectPrintersContoller get instance =>
      _instance ??= ConnectPrintersContoller._();

  final printers = StreamController<List<ConnectPrintersModel>>();
  int teste = 0;

  void init() async {}

  void connect({required ConnectPrintersModel printer}) {}

  Stream<List<ConnectPrintersModel>> list() async* {
    yield* printers.stream.asBroadcastStream();
  }

  scan() {
    teste++;
  }
}
