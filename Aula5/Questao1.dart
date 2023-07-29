void main() async {
  print("Coletando Dados...");
  String dados = await fetchData();
  print(dados);
}

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 3));
  String dados_obtidos = "Dados Obtidos";
  return dados_obtidos;
}
