# Flutter State

## State란?

- State는 Data이다.
- Flutter로 만드는 Application에서 UI를 통해 사용자에게 보여주는 `Data`
- 또는App을 통해서 사용자와 상호작용 하면서 변화하는 `Data`
    
    ex) checkbox의 상태, Drawer open 상태
    

## StatelessWidget / StatefulWidget

- Flutter의 모든 UI 요소들은 Widget이다.
- 그 위젯의 종류가 두 분류로 나뉘는데, `stateless`와 `stateful`로 나뉜다.
- `Stateless`도 상태가 있지만 내부적으로 가지고 `Immutable`한 상태를 가진다.
- 그렇다면 당연히 `StatefulWidget`은 `mutable`한 특성을 가진다.

- 막상 생명주기를 따져본다면 큰 차이가 없어 보인다.
- 다시 build 하거나 state object를 다시 생성 할 때 차이가 생긴다.
- `StatefulWidget`의 실질적인 상태는 `state object`에서 다룬다.
    

## 왜 State Management가 필요한가?

- State object 하나만 가지고 상태를 관리하는 것은 가능하다 하지만 application들이 점점 더 복잡한 구조를 가지게 된다면. 즉, `widget tree`구조를 가지는 추세이다.
- `widget tree` 구조상 동떨어진 widget끼리 통신을 필요로 한다면, 점점코드가 복잡해지고 실수할 가능성이 많아진다.

### 상태관리가 수행해야하는 것

- Code를 Understandable, Readable, Maintainable하게 작성 할 수 있는가?
- Testing이 가능한가?
- 성능이 잘 나오는가?

⇒ 그렇다면 setState만으로 위와 같은 조건을 만족시키기 어렵기 때문에 상태관리 패키지를 사용한다.

# State Management Tool

## InheritedWidget

- `InheritedWidget`은 상태관리를 위한 Flutter Package에 포함 된 기본적인 위젯이다.
- Flutter를 통해서 개발을 하다보면 알게 모르게 사용중이다. 특히`Theme` Widget, `MediaQuery` Widget을 통해서 (위젯이름).of() 형태로 상태에 대해서 참조한다.

## Scoped Model

- [Scoped Model 패키지](https://pub.dev/packages/scoped_model)는 `InheritedWidget`을 이용해서 만든 패키지이며, 사실 `Provider`가 이미 있는 이상, 사용해야 하는 이유를 찾기가 힘들어 졌다

## Provider

- [Provider 패키지](https://pub.dev/packages/provider)는 커뮤니티를 통해서 만들어진 상태관리 패키지이며, 원래는 Google에서 제작한 `provider`와 커뮤니티에서 제작한 `Provider` 패키지가 있었지만, 현재는 커뮤니티에서 만든 `Provider`로 합쳐져서 googler들도 커뮤니티 버전 `Provider`에서 유지 중
- 그에 따라서 구글도 `Provider`를 쓰는 걸 더 권장하는 추세.
- `InheritedWidget` 을 더 간결하게 작성할 수 있도록 제작