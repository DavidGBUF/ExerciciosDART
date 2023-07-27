import 'dart:io';

void main() {
  print("Olá cliente! Qual o preço do produto que você está interessado?: ");
  double preco = double.parse(stdin.readLineSync()!);
  print("De quantos % é o desconto sobre o produto?: ");
  double porcent = double.parse(stdin.readLineSync()!);
  print("O preço do produto com desconto é R\$ ${desconto(preco, porcent)}");
}

var desconto =
    (double preco, double desconto) => preco * (1 - (desconto / 100));
