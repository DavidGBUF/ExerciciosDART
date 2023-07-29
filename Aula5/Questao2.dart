void main() async {
  print("Contagem regressiva: ");
  Stream<int> fasecontagem = countDownStream(5);

  fasecontagem.listen((numeroatual) {
    print(numeroatual);
  });
}

Stream<int> countDownStream(int num) async* {
  for (int i = num; i >= 1; i--) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
