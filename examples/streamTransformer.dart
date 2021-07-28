import 'dart:async';

void main() {
  final ctrl = StreamController<int>.broadcast();

  final sub = ctrl.stream
      .where((valor) => (valor % 2 == 0))
      .listen((resultado) => print(resultado));

  for (int i = 1; i < 11; i++) {
    ctrl.sink.add(i);
  }

  ctrl.close();
}
