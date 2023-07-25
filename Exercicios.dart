//QUESTÂO 1
// void main(){
//   double num1=6;
//   double num2=5;
  
//   print("A soma é $num1 + $num2 = ${num1+num2}");
  
//    print("A subtração é $num1 - $num2 = ${num1-num2}");
  
  
//   print("A multiplicação é $num1 X $num2 = ${num1*num2}");
  
//   print("A Divisão é $num1 / $num2 = ${num1/num2}");
  
//   print("O resto da divisão é $num1 % $num2 = ${num1%num2}");  
// }

//QUESTÃO 2

import 'dart:io';
void main() {
print("Digite um número");


double num1=double.parse(stdin.readLineSync()!);

if(num1%2==0){
  print("${num1} é um número par");
} else{
   print("${num1} é um número impar");
}
  

  
  
}
