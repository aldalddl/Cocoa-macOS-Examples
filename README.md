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
  


</br>

## 예제 앱 목차

**1. Cocoa Speech Synthesizer**

<img height="300" alt="1" src="https://github.com/user-attachments/assets/5a2b9745-162b-4bc1-b18b-b6261b4537e7">

**2. Cocoa Slider Binding**

<img height="300" alt="2" src="https://github.com/user-attachments/assets/04551c1e-e1a6-4e7e-9070-2630646866f6">
