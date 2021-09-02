Pod::Spec.new do |s|
    s.name         = "asnpbridge"
    s.version      = "1.0.48"
    s.license      = { type: 'Custom license', file: 'LICENSE' }
    s.summary      = "Bridge test"
    s.description  = "Bridge test description"
    s.homepage     = "https://github.com/ashmaenkov/asnpbridge.git"

    s.author = { "ashmaenkov" => "artsiom.shmaenkov@gmail.com" }
    s.source = { :git => "https://github.com/ashmaenkov/asnpbridge.git", :tag => "#{s.version}" }


    s.vendored_frameworks = "asnpbridge.xcframework"
    s.platform = :ios
    s.swift_version = "5"
    s.ios.deployment_target  = '11.0'

    # s.xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    # s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    # s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    # s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    # s.pod_target_xcconfig = { 'ONLY_ACTIVE_ARCH' => 'YES' }
    # s.user_target_xcconfig = { 'ONLY_ACTIVE_ARCH' => 'YES' }
    #
    # s.pod_target_xcconfig   = { 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
    # s.user_target_xcconfig  = { 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }

# s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 armv7', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
# s.user_target_xcconfig = { 'VALID_ARCHS' => 'arm64 armv7', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

# s.pod_target_xcconfig = { 'VALID_ARCHS' => '$(ARCHS_STANDARD)', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
# s.user_target_xcconfig = { 'VALID_ARCHS' => '$(ARCHS_STANDARD)', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

# [CP] Unable to find matching .xcframework slice in 'asnpbridge/asnpbridge.xcframework asnpbridge framework ios-arm64 ios-x86_64-simulator' for the current build architectures (arm64 x86_64).

# pod repo push asnpbridge asnpbridge.podspec --verbose --allow-warnings --skip-import-validation
 # https://cocoapods.org/pods/asnpbridge

 # pod trunk push asnpbridge.podspec
end
