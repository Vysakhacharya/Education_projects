 import 'dart:io';
void main(){
  num reminder, sum =0, temp;

  print('Enter a Number');
  // int number = 54545;
  int number = int.parse(stdin.readLineSync()!);
  temp = number;
  // a loop to reverse a number
  while(number>0)
  {
    reminder = number % 10;  //get remainder
    sum = (sum*10)+reminder;
    number = number~/10;
  }

  if(sum == temp)
  {
    print('Its A Palindrome number');
  }else{
    print('Its A Not Palindrome number');
  }
  // StringNumber();
}