Pod::Spec.new do |s|
  s.name             = "JAGFaceRecognition"
  s.version          = "1.0"
  s.summary          = "JAGFaceRecognition Extension."
  s.description      = <<-DESC
                       JAGFaceRecognition provides helper methods that will make you much easier to recognize faces in UIImageView.
                       DESC
  s.homepage         = "https://github.com/JesusAntonioGil/JAGFaceRecognition"
  s.license          = 'MIT'
  s.author           = { "Jesús Antonio Gil" => "jesus.a22@hotmail.com" }
  s.source           = { :git => "https://github.com/JesusAntonioGil/JAGFaceRecognition.git",  :tag => s.version.to_s}

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'UImageViewFaceRecognition/JAGFaceRecognition'
	
  s.frameworks = 'UIKit'
end
