# MVVM ?
Model + View + ViewModel = MVVM
<br>
<br>
<img src="https://github.com/jinlee1206/MVVM/blob/master/resource/MVVM.jpg"></img>
- Model : 실질적인 데이터를 가지고 있으며 ViewModel이 소유하고 데이터를 가공하며 View에 뿌려준다.
- View : 사용자에게 보여지며 유저와의 인터렉션이 이루어진다.ViewModel을 소유 하고있으며
         인풋이 들어오면 ViewModel에게 명령을 내린다(Command)
- ViewModel : 제일중요한녀석이다.View와 Model이 서로 알진 못하지만 ViewModel 그 사이에서 데이터 바인딩을 해줌으로서 뷰와 모델의 싱크가 맞춰진다.
              MVC패턴에서 Controller 역할을 이놈이 대부분 수행한다.                                  
# 데이터 바인딩이란 ?
<br>
데이터 바인딩은 응용 프로그램 UI와 비즈니스 논리를 연결하는 프로세스입니다 - Microsoft - <br>
쉽게 설명하자면 Model의 데이터와 View에 표시되는 데이터를 동기화 시켜주는 개념 같다.
비즈니스 로직과 View 자체가 서로 분리되어있기 때문에 MVVM 패턴에서는 이와 같은 데이터 바인딩을 통하여 데이터의 일관성을 유지시켜주는것같다.














