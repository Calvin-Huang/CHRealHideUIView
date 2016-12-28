CHRealHideUIView
=====================================
![](https://travis-ci.org/Calvin-Huang/CHRealHideUIView.svg?branch=master) ![swift-version](https://img.shields.io/badge/Swfit-2.x-orange.svg) ![platforms](https://img.shields.io/badge/platform-iOS-lightgrey.svg) ![pod](https://img.shields.io/badge/pod-1.0.0-blue.svg)

## Snapshot
<img src="https://raw.githubusercontent.com/Calvin-Huang/CHRealHideUIView/master/assets/CHRealHideUIView.gif" alt="snapshot" width="400">

## About
When hidding the view, we expect the hidden view will not leave blank space.<br>
For example there are two views =>  :dog::smile::cat:, hide :smile: should be :dog::cat:␣ , however in iOS will be :dog:␣:cat:.<br>
Even view don't draw, auto layout will retain their frame.<br>
CHRealHideUIView help you hide views and will not leave blank space.

## Usage
You can hide and show views very easy, just `hide(view)` or `show(view)`.
```swift
class ViewController: UIViewController {
    @IBOutlet weak var view: UIView!

    @IBAction func toggleHideAndShowButtonClicked(_: AnyObject) {
        if (view.hidden) {
            show(view)
        } else {
            hide(view)
        }
    }
}
```

## Install
##### Via from [CocoaPods](https://github.com/CocoaPods/CocoaPods).
Add `pod 'CHRealHideUIView'` to your Podfile and run `pod install`
```ruby
platform :ios, '8.0'

target 'MyApp' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  pod 'CHRealHideUIView'

  target 'MyAppTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'MyAppUITests' do
    inherit! :search_paths
    # Pods for testing
  end
end

```

## License
Copyright (c) [Calvin Huang](https://github.com/Calvin-Huang). This software is licensed under the [MIT License](https://github.com/Calvin-Huang/CHRealHideUIView/blob/master/LICENSE).