import 'dart:async';

void main() {
  //criar stream
  final StreamController ctrl = StreamController();

  //adiciona listener ao stream
  final StreamSubscription sub = ctrl.stream.listen((valor) {
    print(valor);
  });

  //adicionar dados
  ctrl.sink.add('Arthur');
  ctrl.sink.add(19);
  ctrl.sink.add({'nome': "Arthur", 'idade': '19'});

  ctrl.close();
}
