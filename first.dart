void main() {
  var i = 1;
  i = 3;
  print(i);
}

/*
1. Dart의 기본 문법 첫번째.

  - Dart 는 기본적으로 C++ 과 Python 유사한 문법을 지닌다. C++와 동일하게 main() 함수
  가 동작하는 방식으로 , return  값이 없으면 void 타입으로  declare 한다.
  C++ 와의 차이점으로 출력할 때 cout <<  이 아닌 python 처럼 print() 를 사용한다.

  - 주석은 동일하게 // 와 /**/ 이다.

  - Built-in Number Types 에 대해 
    ->  C++ 와 유사하게 int, boolean, double 타입을 지원
    차이점 1.
     C++ 와 다른 점 타입이 단순 컴퓨터 메모리가 아닌 클래스 기반의 객체로
    만들어진다는 점.
    차이점 2.
     타입이 갖는 최대값과 최소값이 CPU와 운영체제에 가변적이지 않고
     64bit 이상으로 지원하지 않도록 제한되어 있음.

  - Type Inference 에 대해
   -> Dart 에서는 대부분 알아서 타입을 유추해주는 type inference 기능을 사용.
      var과 dynamic 이 있는데, var은 타입을 처음 유추하면 다른 타입의 데이터를 
      저장하면 에러가 발생. 그러나 dynamic 은 가능.
   -> 상수는 const 와 final 타입을 사용함.

   - Built-in Data Collection Types
     -> C++ 의 배열과  STL 에 상응하는 데이터 저장 공간으로 List, Set, Map 을 지원.
      var mylist = [1, 2, 3]; // List , 순서를 저장
      var myset = {'C', 'C++', 'Go', 'Dart', 'Go'}; // Set, 순서 X, 중복 X
      var mymap = {1:'apple', 2:'banana'}; // Map, key&value 값 

   - Conditional Statement
    -> C++ 와 동일하게 사용.
     
   - Loop Statement
    -> for, while, do-while, break, continue 등 동일하나 List 같이 복수의 데이터가
      들어 있는 경우에는 'in' 을 사용하여 하나씩 데이터를 추출하는 문법 사용 가능.
      for(var item in mylist) {
            print(item);
          }

   - Functions
    -> Dart의 함수는 두 가지 형태로 이루어 지는데, 첫째는 C++ 과 동일한 형태,
     두 번째는 함수의 이름이 없는 경우이다. 짧은 문장을 구현하는 경우에  사용하며
     anonymous 함수라고 부른다.
     void main() {
        var a = ((i) => print(i));
        a(1); // 1
      }
    
    - Library 
     -> import 구문을 사용하여 가져온다.


2. Dart 의 기본 문법 두번째
    - Class
      -> Dart 에서 Class 는 기본적으로 C++ 과 유사하나, named constructor 라는
         다른 방법의 constructor 를 제공한다. 
         Spacecraft.unlaunched(String name) : this(name, null);
         클래스 이름.constructor로 사용할 함수(입력 파라메타) 형태이며, 
         받은 입력 파라메터를 가지고 멤버 변수인 name 을 채우고, 또다른 멤버 변수를 
         null 로 채운다는 뜻이다.

      -> print 구문의 문자열 안에 $ 기호를 주면, 해당 기호 뒤의 변수 이름 출력
         print('Spacecraft: $name');

      -> int get launchYear => 
            launchDate?.year;   // 변수 뒤의 ? 은 nullable 이란 뜻

          ...
          print(voyager.launchYear);
          함수를 의미하는 () 기호는 없지만 객체 내부의 값을 꺼내올 수 있음.
          launchDate?.year 의 의미는, launchDate 가 null 이 아닌 경우, launchDate
          의 멤버인 year 값을 추출한다.
      
      -> Dart 의 유전 법칙은 single inheritance 이며, 다수의 base class 부터 
         derived class 를 만들 수 있는 C++ 과는 차이가 있다. 
         Dart 에서 inheritance 는 'extends' 문법으로 사용한다.


    - Async 
      -> Dart 에서는 async 와 await 문법을 제공하는데, 
      Future printWithDelay(String message) async {
        await Future.delayed(oneSecond);
        print(message);
      }
      위의 프로그램 안에서는 delayed 함수가 실행되는 동한 다른 작업들이 동시에
      이루어질 수 있다. 이후 delayed 함수의 작업이 종료되면 print(message)를 
      실행한다.
 */