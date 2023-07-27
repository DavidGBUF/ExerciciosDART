import 'Questao1.dart';
void main(){
  print("\n");
carro c1 = carro(marca: "Mercedes", modelo: "E-400", anofab: 2023, qlma: 15100, portas: 4);

c1.apresentacao();
print("O estado deste carro é: ${c1.estado()}");


print("\n");


moto m1 = moto(marca: "Honda", modelo: "CB500", anofab: 2023, cc: 600, partidaE: true);
m1.apresentacao();
print("O tipo de sua moto é: ${m1.tipo()}");
}





class carro extends veiculo{
  int  qlma;
  int portas;

  carro({required super.marca,
    required super.modelo,
    required super.anofab,
    required this.qlma, 
  required this.portas});


@override
void apresentacao(){
print("""Marca: ${this.marca}
Modelo: ${this.modelo}
Ano de Fabricação: ${this.anofab}
Quilometragem por ano: ${this.qlma} 
Número de portas: ${this.portas} """);
 }

String estado(){
  if(this.qlma<=15000){
    return "NOVO";
  } else if(this.qlma<20000){
    return "SEMINOVO";
  } else{
    return "ANTIGO";
  }
}
}





class moto extends veiculo{
int cc;
bool partidaE;


moto({required super.marca,
    required super.modelo,
    required super.anofab,
    required this.cc, 
  required this.partidaE});

  @override
void apresentacao(){
print("""Marca: ${this.marca}
Modelo: ${this.modelo}
Ano de Fabricação: ${this.anofab}
Número de Cilindradas: ${this.cc} 
Possui partida Elétrica?: ${this.partidaE} """);
 }


String tipo(){
  if(this.cc<=125){
    return "LEVE";
  } else if(this.cc<=500){
    return "NORMAL";
  } else{
    return "ESPORTIVA";
  }
}
}
