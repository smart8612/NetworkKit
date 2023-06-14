# 📡 NetworkKit

## Overview
* 단순한 네트워크 추상화 계층을 제공합니다.
* API 명세를 하나의 구조체 타입으로 관리할 수 있습니다.
* 사전에 정의해둔 API 명세 타입을 통해 손쉬운 네트워크 요청이 가능합니다.

## 📰 Related Articles
NetworkKit이 개발 과정 및 의도는 다음의 블로그 게시물에서 확인하실 수 있습니다.
* [네트워크 코드 모델링](https://singularis7.tistory.com/93)

## 🛠️ Used Technology
### 도구
`#Xcode` `#Swift`

### 모델링
`#Protocol-Oriented Programming`

### 네트워킹
`#URLSession`

### 비동기 API 및 동시성
`#Swift Concurrency`

## ⚙️ Installation

### Swift Package Manager
* Apple 플랫폼의 응용프로그램을 개발하는 프로젝트에서는 Xcode UI를 통해 NetworkKit에 대한 의존성을 추가하실 수 있습니다. 
* SPM 패키지 프로젝트를 통해 개발 중이어도 `Package.swift` 파일을 수정하여 NetworkKit에 대한 의존성을 추가하실 수 있습니다. 

#### Xcode UI를 활용한 의존성 추가법
1. Xcode의 메뉴바에서 Project Settings를 선택합니다.
2. Project Settings의 하위 메뉴 중 Swift Packages를 선택합니다.
3. Swift Packages 창에서 NetworkKit을 추가합니다.

#### Package.swift를 활용한 의존성 추가법
1. 다음의 dependency를 Package.swift에 추가합니다.
```swift
.package(url: "https://github.com/smart8612/NetworkKit", branch: "main")
```
2. NetworkKit을 사용하고 싶은 target에 NetworkKit의 의존성을 추가합니다.
```swift
import PackageDescription

let package = Package(
    name: "OrderClient",
    platforms: [ .iOS(.v14) ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "OrderClient",
            targets: ["OrderClient"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/smart8612/NetworkKit", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "OrderClient",
            dependencies: ["NetworkKit"]),
    ]
)
```

## API Documentation
Xcode의 DocC 컴파일러를 활용해 API 도큐멘트를 빌드할 수 있습니다.
Build Documentaion 기능을 통해 API의 세부 설명을 확인해보세요!
* 단축키: <kbd>control</kbd> + <kbd>shift</kbd> + <kbd>command</kbd> + <kbd>d</kbd>

## 🤼 Sample Projects
NetworkKit을 통해 구축된 샘플 프로젝트를 다음의 Repository에서 확인하실 수 있습니다.
* [OrderClient](https://github.com/smart8612/OrderClient)
