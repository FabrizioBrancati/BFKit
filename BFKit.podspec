Pod::Spec.new do |s|
  s.name         = "BFKit"
  s.version      = "1.5.2"
  s.summary      = "BFKit is a collection of useful classes to develop Apps faster"
  s.homepage     = "https://github.com/FabrizioBrancati/BFKit"
  s.screenshots  = "http://github.fabriziobrancati.com/bfkit/resources/screenshot.png"
  s.license      = {
                      :type => "MIT",
                      :file => "LICENSE"
                   }
  s.author             = { "Fabrizio Brancati" => "fabrizio.brancati@gmail.com" }
  s.social_media_url   = "https://twitter.com/infinity4all"
  s.platform     = :ios, "7.0"
  s.source       = {
                      :git => "https://github.com/FabrizioBrancati/BFKit.git",
                      :tag => "v1.5.2"
                   }
  s.prefix_header_contents = '#import <BFKit.h>'
  s.source_files  =  "BFKit/**/*.{h,m}"
  s.public_header_files = "BFKit.h"
  s.resources = "BFKit/Languages/**"
  s.frameworks  = "Foundation", "UIKit", "CoreGraphics", "AudioToolbox", "CoreImage", "Accelerate", "QuartzCore"
  s.weak_frameworks = 'LocalAuthentication'
  s.requires_arc = true
end
