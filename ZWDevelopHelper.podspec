Pod::Spec.new do |s|

  s.name    = 'ZWDevelopHelper'
  s.version = '0.0.1'
  s.summary = 'iOS开发常用助手工具集合、项目初始化必备。'
  s.homepage  = 'https://github.com/wangziwu/ZWDevelopHelper'
  s.license = 'MIT'
  s.authors = {'wangziwu' =>  'wang_ziwu@126.com'}
  s.platform  = :ios,'8.0'
  s.ios.deployment_target = '8.0'
  s.source  = {:git => 'https://github.com/wangziwu/ZWDevelopHelper.git',:tag => s.version}
  s.source_files  = 'ZWDevelopHelper/*.{h,m}'
  s.resources     = 'ZWDevelopHelper/*.{png,xib,nib,bundle}'
  s.requires_arc  = true
end
