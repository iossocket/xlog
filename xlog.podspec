Pod::Spec.new do |s|
  s.name             = 'xlog'
  s.version          = '0.1.0'
  s.summary          = 'A short description of xlog.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/iossocket/xlog'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'iossocket' => 'avx302@gmail.com' }
  s.source           = { :git => 'https://github.com/iossocket/xlog.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'

  s.source_files = 'xlog/Classes/**/*.{h,m,mm}'
  s.public_header_files = 'xlog/Classes/**/*.h'
  s.vendored_frameworks = 'xlog/mars.framework'
  
  s.preserve_path = 'xlog/Classes/xlog.modulemap'
  s.module_map = 'xlog/Classes/xlog.modulemap'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  
  s.libraries = 'resolv.9', 'z'
  s.frameworks = 'SystemConfiguration', 'CoreTelephony'
  s.dependency 'SSZipArchive'
end
