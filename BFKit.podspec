Pod::Spec.new do |s|
  s.name             = "BFKit"
  s.version          = "3.0.0"
  s.summary          = "BFKit is a collection of useful classes to develop Apps faster"
  s.homepage         = "https://github.com/FabrizioBrancati/BFKit"
  s.screenshots      = "http://github.fabriziobrancati.com/bfkit/resources/screenshot-objc.png"
  s.license          = {
                          :type => "MIT",
                          :file => "LICENSE"
                       }
  s.author           = { "Fabrizio Brancati" => "fabrizio.brancati@gmail.com" }
  s.social_media_url = "https://twitter.com/infinity4all"
  s.platform         = :ios, "7.0"
  s.source           = {
                          :git => "https://github.com/FabrizioBrancati/BFKit.git",
                          :tag => "v3.0.0"
                       }
  s.source_files     = "Source/**/*.{h,m}"
  s.resources        = "Source/Languages/**"
  s.frameworks       = "Foundation", "UIKit", "CoreGraphics", "AudioToolbox", "CoreImage", "Accelerate", "QuartzCore"
  s.weak_frameworks  = 'LocalAuthentication'
  s.requires_arc     = true
end
