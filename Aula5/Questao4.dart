void main() async {
  List<String> lista_nomes = ["Maria", "David", "Caio", "Fernanda", "Eduarda"];

  Stream<List<String>> nomes_stream = Stream.value(lista_nomes);

  nomes_stream.toList().then((value) => print(value));

  // nomes_stream.toList().then((x) => print(x));

  Stream<List<int>> comp_elem_stream = Stream.value(lista_nomes)
      .map((nivel1) => nivel1.map((nivel2) => nivel2.length).toList());

  comp_elem_stream
      .toList()
      .then((value) => print("E o comprimento desses nomes é $value"));
}
