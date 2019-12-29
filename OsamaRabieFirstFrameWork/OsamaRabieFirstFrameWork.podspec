Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.name         = "OsamaRabieFirstFrameWork"
  spec.version      = "1.0.13"
  spec.summary      = "My First Pod OsamaRabieFirstFrameWork."
  spec.description  = "If this worked, I will be doing much more pods to help everyone out."
  spec.homepage     = "https://github.com/osamagucCitySoc/OsamaRabieFirstFrameWork"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.license      = "MIT"


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.author             = { "osama rabie" => "osamaguc@gmail.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
 
   spec.platform     = :ios, "11.0"
   spec.swift_version = "4.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source       = { :git => "https://github.com/osamagucCitySoc/OsamaRabieFirstFrameWork.git", :tag => "1.0.13" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  spec.source_files  = "OsamaRabieFirstFrameWork", "OsamaRabieFirstFrameWork/**/*.{h,m,swift}"

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
 
  spec.resource_bundles = {
    'OsamaRabieFirstFrameWork' => ['OsamaRabieFirstFrameWork/**/*.{storyboard,xib}']
  }

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
 

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
 

end
