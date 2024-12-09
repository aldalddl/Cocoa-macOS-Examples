# Cocoa-macOS-Examples
Objective-C로 macOS 용 Cocoa 예제 따라하며 학습하기

(코드 출처: https://github.com/NikolaGrujic91/Cocoa-macOS-Examples)

</br>

## macOS
- **Cocoa API:** Object-Oriented-API
- **CocoaTouch(Framework):** AppKit의 iOS 용 버전 (CocoaTouch ⊃ UIKit)
- **AppKit:** 네이티브 macOS 애플리케이션 개발을 위한 toolkit, 그래픽 인터페이스를 만드는 클래스들을 제공

</br>

## Objective-C
- 데이터 바인딩과 관찰 기능 (SwiftUI + Combine과 같은 작업)
  - UI와 데이터 간의 바인딩 쉽게 설정 가능 
    - `bind:toObject:withKeyPath:options:` 사용 (양방향 데이터 동기화)
  - KVO(Key-Value Observing) 내장
    - `willChangeValueForKey:`, `didChangeValueForKey:`로 이벤트 수동 제어 가능
- `nullable`: 값이 nil일 수 있음 (Swift의 `optilnal`)
  - Objective-C의 포인터 타입은 nil을 허용하므로 `nullable`이 선택사항
   </br> 그러나 Objective-C 코드를 Swift에서 사용할 때 `nullable`이 `optional`로 매핑되어 호환성 면에서 좋음 + 코드 가독성
  - `nullable`과 `nonnull`
    - 포인터 타입에서, nil이 될 수 있는지의 여부를 명시적으로 구분하기 위해 사용
    - 둘 다 명시해주면 Swift에서 사용 시 `optional` / `non-optional` 타입으로 매핑되어 유용
    - `nullable`과 `nonnull`은 컴파일러 힌트로 동작
     </br> `nonnull`에 nil이 들어가도 컴파일 경고만 일어나고 오류가 일어나지 않음
     </br> 런타임에서도 강제 검사가 없어 nil이 전달되도 강제로 오류를 발생시키지 않음, 필수 값이라고 가정한 코드에서 예상치 못한 결과 발생 가능
    - `nonnull`을 생략하면 컴파일러는 `nullable`로 해석하기 때문에 반드시 값이 있어야하는 경우에 써주어야 함
     </br> + 값을 강제하므로 불필요한 nil 검사 코드 줄일 수 있음
- 헤더가드
  - `#ifndef`: 중복 정의를 피하기 위한 매크로 (파일이 여러번 포함되더라도 컴파일러가 중복으로 처리하지 않도록 함)
    ```Objective-C
    #ifndef football.h
    #define football.h
    ```
    - 처음 포함되었을 때: 정의되지 않은 상태이므로 `#define football.h` 코드 실행
    - 중복 포함되었을 때: 이미 정의되어 있으므로 `#define football.h` 코드 무시 

</br>

## 예제 앱 목차

**1. Cocoa Speech Synthesizer**

<img height="300" alt="1" src="https://github.com/user-attachments/assets/5a2b9745-162b-4bc1-b18b-b6261b4537e7">

**2. Cocoa Slider Binding**

<img height="300" alt="2" src="https://github.com/user-attachments/assets/04551c1e-e1a6-4e7e-9070-2630646866f6">
