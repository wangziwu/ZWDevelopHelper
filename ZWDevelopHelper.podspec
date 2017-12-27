Pod::Spec.new do |s|

  s.name    = 'ZWDevelopHelper'
  s.version = '0.0.2'
  s.summary = 'iOS开发常用助手工具集合、项目初始化必备。'
  s.homepage  = 'https://github.com/wangziwu/ZWDevelopHelper'
  s.license = 'MIT'
  s.authors = {'wangziwu' =>  'wang_ziwu@126.com'}
  s.platform  = :ios,'8.0'
  s.ios.deployment_target = '8.0'
  s.source  = {:git => 'https://github.com/wangziwu/ZWDevelopHelper.git',:tag => s.version}
  s.source_files  = 'ZWDevelopHelper/ZWDevelopHelper.{h,m}'
  s.requires_arc  = true

  s.subspec	'ZWFileManageHelper' do |ss|
  	ss.source_files = 'ZWDevelopHelper/ZWFileManageHelper/*.{h,m}'
  	ss.dependency 	'ZWDevelopHelper/ZWSandboxHelper'
  end

  s.subspec	'ZWSandboxHelper' do |ss|
  	ss.source_files = 'ZWDevelopHelper/ZWSandboxHelper/*.{h,m}'
  end


end
