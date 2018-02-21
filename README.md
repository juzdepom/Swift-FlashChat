# Flash-Chat
Part of the iOS App Development Bootcamp with [The App Brewery](https://www.appbrewery.co) 📱 | Project Stub | (Swift 4.0/Xcode 9) - Flash Chat App

## Finished App
![Finished App](https://github.com/londonappbrewery/Images/blob/master/Flash%20Chat.gif)


## Podfile Configuration
```
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CLANG_WARN_DOCUMENTATION_COMMENTS'] = 'NO'
        end
    end
end
```


