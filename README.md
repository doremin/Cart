# Cart Example

## Usage
1. dependency fetch
```
$ tuist fetch
```

2. pin layout 따로 빌드 (pin layout에서 PinLayout/TestProjects를 빌드하면서 에러가 발생한다고 함) from: ![민소네님의 예시 프로젝트](https://github.com/minsOne/iOSApplicationTemplate)
```
$ rm -rf Tuist/Dependencies/Carthage/Checkouts/PinLayout/TestProjects
$ carthage build PinLayout --project-directory Tuist/Dependencies --platform iOS --use-xcframeworks --no-use-binaries --use-netrc --cache-builds --verbose
```

3. 다시 fetch
```
$ tuist fetch
```

4. generate
```
$ tuist generate
```

## 잘 안됐던 부분
1. SPM으로 FlexLayout을 추가하면 빌드가 안된다. Preprocessor Macro 추가해도...
* 
