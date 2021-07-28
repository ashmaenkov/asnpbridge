Pod::Spec.new do |s|
    s.name         = "asnpbridge"
    s.version      = "1.0.20"
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

    # s.xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    # s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    # s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    # s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    # s.pod_target_xcconfig = { 'ONLY_ACTIVE_ARCH' => 'YES' }
    # s.user_target_xcconfig = { 'ONLY_ACTIVE_ARCH' => 'YES' }

    unless static_installer.nil?
  static_installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['CLANG_MODULES_AUTOLINK'] = 'NO'
      config.build_settings['GCC_GENERATE_DEBUGGING_SYMBOLS'] = 'NO'
      config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = 'arm64' // <-- inserted here
    end
  end
  static_installer.pods_project.save
end

end
