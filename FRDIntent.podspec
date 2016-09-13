Pod::Spec.new do |s|

  s.name         = "FRDIntent"
  s.version      = "0.8.0"
  s.summary      = "FRDIntent can handle the call between view controller"

  s.description  = "FRDIntent has two components URLRouter and Inteng, using for calling view controllers inner app or outer app."
  s.homepage     = "http://github.com/douban/FRDIntent"
  s.license      = { :type => 'MIT', :text => 'LICENSE.md' }
  s.author       = { "lincode" => "guolin@douban.com" }

  s.platform     = :ios, "8.0"
  s.source       = { :git => "http://github.com/douban/FRDIntent.git", :tag => "#{s.version}" }

  s.subspec 'Intent' do |intent|
    intent.source_files  = 'FRDIntent/Source/Intent/**/*.swift', 'FRDIntent/Source/Core/**/*.swift'
    intent.frameworks    = 'UIKit'
  end

  s.subspec 'URLRouter' do |urlrouter|
    urlrouter.source_files  = 'FRDIntent/Source/URLRouter/*.swift', 'FRDIntent/Source/Core/**/*.swift'
    urlrouter.dependency 'FRDIntent/Intent'
  end

  s.default_subspec = 'URLRouter'

end