Pod::Spec.new do |s|
  s.name     = "MRZScanner"
  s.version  = "1.0.0"
  s.platform = :ios, "11"
  s.swift_version = "4.2"

  s.summary  = "Scans MRZ (Machine Readable Zone) from identity documents (passport, id, visa)."
  s.author   = { "naveen" => "itsmenaveenkumarp@gmail.com" }
  s.homepage = "https://github.com/naveenkp-alt/MRZScanner"
  s.license  = { :type => "MIT", :file => "LICENSE.md" }

  s.source   = { :git => "https://github.com/naveenkp-alt/MRZScanner.git", :branch => "v1.0.0", :tag => s.version.to_s }
  s.source_files = "QKMRZScanner/**/*.{swift}"
  s.resources    = "QKMRZScanner/Supporting Files/tessdata"
  s.frameworks   =  "Foundation", "UIKit", "AVFoundation", "CoreImage", "AudioToolbox"
  
  s.dependency "QKMRZParser"
  s.dependency "SwiftyTesseract"
end