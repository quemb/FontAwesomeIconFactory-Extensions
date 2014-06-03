Pod::Spec.new do |s|
  s.name         = 'FontAwesomeIconFactory-Extensions'
  s.version      = '1.0'
  s.license      = 'MIT'
  s.homepage     = 'https://github.com/quemb/FontAwesomeIconFactory-Extensions'
  s.authors      =  {'Toni Moeckel' => 'tonimoeckel@gmail.com'}
  s.summary      = ''

# Source Info
  s.platform     =  :ios, '7.0'
  s.source       =  {:git => 'https://github.com/quemb/FontAwesomeIconFactory-Extensions.git', :branch => 'master'}
  s.source_files = 'FontAwesomeIconFactory-Extensions/*.{h,m}'
  s.requires_arc = true
  
# Pod Dependencies
  s.dependency       'FontAwesomeIconFactory'

end