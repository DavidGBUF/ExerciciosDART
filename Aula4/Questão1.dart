import 'dart:io';
void main(){
print("Qual a marca de seu veículo?: ");
String Marca= stdin.readLineSync()!;
print("Qual o Modelo de seu veículo?: ");
String Modelo= stdin.readLineSync()!;

print("Qual o Ano de Fabricação de seu veículo?: ");
int Ano= int.parse(stdin.readLineSync()!);

veiculo v1 = veiculo(marca: Marca, modelo: Modelo, anofab: Ano);

v1.apresentacao();
print(v1.toString());


}

class veiculo{
  String marca;
  String modelo;
  int anofab;

 veiculo({required this.marca, required this.modelo, required this.anofab});


 void apresentacao(){
  print("""Marca: ${this.marca}
Modelo: ${this.modelo}
Ano de Fabricação: ${this.anofab} """);
 }
}
