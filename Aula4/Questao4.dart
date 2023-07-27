import 'Questao1.dart';
void main(){
  print("\n");
carro c1 = carro(marca: "Mercedes", modelo: "E-400", anofab: 2023, qlma: 15100, portas: 4);

c1.apresentacao();
print("O estado deste carro é: ${c1.estado()}");
//Questão 4==================================================================

print("O preço base desse veículo é: ${c1.precoBase()}");
//=============================================================

print("\n");

//Questão 4==================================================================
moto m1 = moto(marca: "Honda", modelo: "CB500", anofab: 2023, cc: 600, partidaE: true);
m1.apresentacao();
print("O tipo de sua moto é: ${m1.tipo()}");

print("O preço base desse veículo é: ${m1.precoBase()}");
//=============================================================
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


//Questão 4==================================================================
int precoBase(){
int menosqlma = -1*this.qlma;
int numportas = 500*this.portas;

return 50000+menosqlma+numportas;

}

//==========================================================

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

//Questão 4==================================================================
int precoBase(){
int Cilin = 20*this.cc;
int PartidaEletrica = 0;
if(this.partidaE){
  PartidaEletrica=3000;
}

return 30000+Cilin+PartidaEletrica;
//==================================================================
}
}
