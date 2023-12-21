Pod::Spec.new do |spec|
    spec.cocoapods_version = '>= 1.10'
    spec.name        = 'UECrashReporter'
    spec.version     = '1.0.4'
    spec.platform    = 'ios'
    spec.summary     = 'Reliable, open-source crash reporting for iOS, macOS and tvOS.'
    spec.description = 'PLCrashReporter is a reliable open source library that provides an in-process live crash reporting framework for use on iOS, macOS and tvOS. The library detects crashes and generates reports to help your investigation and troubleshooting with the information of application, system, process, thread, etc. as well as stack traces.'

    spec.homepage    = 'https://www.userexperior.com/'
    spec.license     = { :type => 'MIT', :file => 'LICENSE' }
    spec.authors     = {
        'Microsoft'    => 'appcentersdk@microsoft.com',
        'UserExperior' => 'hello@userexperior.com'
    }

    spec.source      = { :http => "https://raw.githubusercontent.com/UserExperior/UECrashReporter/#{s.version}/UECrashReporter.xcframework.zip" }
    spec.ios.deployment_target    = '12.0'
    spec.vendored_frameworks = 'UECrashReporter.xcframework'
end
