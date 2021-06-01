require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name            = "RCTHttpCache"
  s.version         = pjson["version"]
  s.homepage        = "https://github.com/alanwen2016/react-native-http-cache"
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.author          = { "alanwen2016" => "https://github.com/alanwen2016/" }

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.2'

  s.source          = { :git => "https://github.com/alanwen2016/react-native-http-cache.git", :tag => "master" }
  s.source_files  = "ios/RCTHttpCache/*.{h,m}"

  s.dependency 'React'
end
