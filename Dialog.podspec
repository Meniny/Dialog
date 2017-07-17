Pod::Spec.new do |s|
  s.name             = "Dialog"
  s.version          = "1.0.1"
  s.summary          = "A delightful dialog view for iOS written in Swift"
  s.description      = <<-DESC
                        Fire is a delightful dialog view for iOS written in Swift.
                        DESC

  s.homepage         = "https://github.com/Meniny/Dialog"
  s.license          = 'MIT'
  s.author           = { "Meniny" => "Meniny@qq.com" }
  s.source           = { :git => "https://github.com/Meniny/Dialog.git", :tag => s.version.to_s }
  s.social_media_url = 'https://meniny.cn/'

  s.ios.deployment_target = '9.0'

  s.source_files = 'Dialog/*.*'
  s.public_header_files = 'Dialog/Dialog.h'
  s.frameworks = 'Foundation', 'UIKit'
end
