void main () async {
  func1();
//   await func4(60).them{
//     (value){
//       print(value);
//       print('then');
//     }.
//   }.catchError((error) ({
//   print(error);
//   print('error');
//   })

  try {
    var value = await func4(30);
    print(value);
    print('try');
  } catch (error){
    print(error);
    print('error');
  }
  
  func2();
  func3();
  
}

func1(){
  print("function1");
}

func2(){
  print("function2");
}

func3(){
  print("function3");
}

Future<String> func4(int nilai) {
  return Future.delayed(Duration(seconds : 3), () {
    if (nilai >50) {
      return "Lulus";
    } else {
      throw "Error Tidak Lulus";
    }
  });
}
