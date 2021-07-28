Pod::Spec.new do |s|
    s.name         = "asnpbridge"
    s.version      = "1.0.12"
    s.license      = { type: 'Custom license', file: 'LICENSE' }
    s.summary      = "Bridge test"
    s.description  = "Bridge test"
    s.homepage     = "https://github.com/ashmaenkov/asnpbridge.git"

    s.author = { "ashmaenkov" => "artsiom.shmaenkov@gmail.com" }
    s.source = { :git => "https://github.com/ashmaenkov/asnpbridge.git", :tag => "#{s.version}" }


    s.vendored_frameworks = "asnpbridge.xcframework"
    s.platform = :ios
    s.swift_version = "5"
    s.ios.deployment_target  = '11.0'

    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
