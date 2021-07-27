Pod::Spec.new do |s|
    s.name         = "NoPass-iOS-SDK"
    s.version      = "1.0.1"
    s.license      = { type: 'Custom license', file: 'LICENSE' }
    s.summary      = "Make it easy to use NoPass product on your iOS app."
    s.description  = "NoPass SDK is a software developer kit that allows you to build the NoPass 3-factor authentication into your existing mobile applications."
    s.homepage     = "https://www.identite.us/nopass-sdk"

    s.author = { "Identite inc." => "support@identite.us" }
    s.source       = { :path => "~/Documents/Projects/123/mapd.client.ios.nopass.sdk", :tag => "#{s.version}" }


    s.vendored_frameworks = "NoPassSDK.xcframework"
    s.platform = :ios
    # s.swift_version = "5"
    s.ios.deployment_target  = '12.1'
end
