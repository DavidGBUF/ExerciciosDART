import 'dart:math';

void main() async {
  print("Inicio");

  // par_aleatorio().then((value) => print("$value segundos já passaram"));

  // impar_aleatorio().then((value) => print("$value segundos já passaram"));

  // aleatorio().then((value) => print("$value segundos já passaram"));
  await Future.wait([
    par_aleatorio(),
    impar_aleatorio(),
    aleatorio()
  ]).then((value) => print(
      "A lista formada pelos tempos de execução de cada future é : $value"));
}

Future<int> par_aleatorio() async {
  Random aleatorio = new Random();
  int par = aleatorio.nextInt(5) * 2;
  await Future.delayed(Duration(seconds: par));

  return par;
}

Future<int> impar_aleatorio() async {
  Random aleatorio = new Random();
  int impar = aleatorio.nextInt(4) * 2 + 1;
  await Future.delayed(Duration(seconds: impar));

  return impar;
}

Future<int> aleatorio() async {
  Random aleatorio = new Random();
  int alea = aleatorio.nextInt(3);
  await Future.delayed(Duration(seconds: alea));

  return alea;
}
