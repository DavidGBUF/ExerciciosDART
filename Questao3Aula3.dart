import 'dart:io';

void main(){
  List lista = [1,2,34,4,45,4,5,7546,1,243,3,252];
  List sublista = [];
  
  print("Qual é o preço máximo que você pode pagar?: ");
  int max= int.parse(stdin.readLineSync()!);
  
  for(int i = 0;i<lista.length;i++){
    if(lista[i]<=max && lista[i]%2==0){
      sublista.add(lista[i]);
    }
  }
  print(sublista);
}
