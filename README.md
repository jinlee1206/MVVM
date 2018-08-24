# What is MVVM ?
Model + View + ViewModel = MVVM
<br>
<br>
<img src="https://github.com/jinlee1206/MVVM/blob/master/resource/MVVM.jpg"></img>
- Model : 실질적인 데이터를 가지고 있으며 ViewModel이 소유하고 데이터를 가공하며 View에 뿌려준다.
- View : 사용자에게 보여지며 유저와의 인터렉션이 이루어진다.ViewModel을 소유 하고있으며
         인풋이 들어오면 ViewModel에게 명령을 내린다(Command)
- ViewModel : 제일중요한녀석이다.View와 Model이 서로 알진 못하지만 ViewModel 그 사이에서 데이터 바인딩을 해줌으로서 뷰와 모델의 싱크가 맞춰진다.
              MVC패턴에서 Controller 역할을 이놈이 대부분 수행한다.                                  
<br>






