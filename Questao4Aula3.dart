import 'dart:io';
void main(){
  int cont = 0;
  List <double> lista = [];
  print("""========Calculadora de Média========
  Digite os números que compõe a média, digite -1 para finalizar""");

  while(true){
    
    print("Qual a ${cont +1}° nota? ");
    double nota= double.parse(stdin.readLineSync()!);
    if(nota==-1){
      break;
    }
    lista.add(nota);
    cont++;

  }
  
  print("""
A lista formada pelas notas é $lista e a média é ${medianotas(lista)}""");
}

double medianotas(List <double> N){
  double media=0;
  double soma=0;
  int tam=N.length;
  for(int i=0;i<N.length;i++){
    soma+=N[i];


  }
  media = soma/tam;
  return media;
}
