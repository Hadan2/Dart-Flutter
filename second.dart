import 'dart:io';

heavyLoadFunction() {
  print("[heavyLoadFunction(): started.");
  var sum = 0;
  for (var tmp = 0; tmp < 100000000; tmp++) {
    sum += tmp;
  }
  print("[heavyLoadFunction(): completed.");
  return sum;
}

Future takeTime() async {
  print("[takeTime(): started.");
  var status = await heavyLoadFunction();
  print("[takeTime(): completed and result is $status.");
  return status;
}

Future main() async {
  print("[main(): started.");
  var status = takeTime();
  print("[main(): result is $status.");
}

/*
  1. async, wait and Future Syntax
  -> 


 */