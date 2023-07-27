import 'dart:io';
import 'dart:math';

void main(){
  var alea = Random();
  print("Eu pensei em um número entre 0 e 10, tente adivinha-lo");
  print("Quantas tentativas gostaria de ter?: ");
  int ntent= int.parse(stdin.readLineSync()!);
  
  int num = alea.nextInt(10);
  

  

  while(ntent>0){
    print("Digite um número: ");
    int Tent= int.parse(stdin.readLineSync()!);
    if(Tent==num){
      print("Está correto, o número que pensei foi $num");
      break;
    }
    
    else if(Tent<num){
      print("O número que pensei é maior que esse");
    }
    
    else if(Tent>num){
      print("O número que pensei é menor que esse");
    }
    ntent--;

  }
  
  if(ntent==0){
    print("Acabou suas tentativas, infelizmente você perdeu");

  }
}
