Pod::Spec.new do |s|
  s.name              = "AppRootViewController"
  s.version           = "1.0.6"
  s.summary           = "Swift library for Routing of ViewControllers."
  s.license           = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage          = "https://github.com/Taillook/AppRootViewController"
  s.author            = { "Taillook" => "taillook.s[at]gmail.com" }
  s.social_media_url  = "http://twitter.com/Taillook"
  s.source            = { :git => "https://github.com/Taillook/AppRootViewController.git", :tag => "1.0.6" }
  s.platform          = :ios, '11.0'
  s.requires_arc      = true
  s.source_files      = 'AppRootViewController/*.{h,m,swift}'
end
