Pod::Spec.new do |s|
  s.name             = 'NCControler'
  s.version          = '0.2.3'
  s.summary          = 'NSNotificationCenter controller based on idea of Facebook KVOController'

  s.description      = <<-DESC
NCController allows you to observe default's NSNotificationCenter
notifications using blocks and do not care of unobservation.
Single class: MLWNCController
                       DESC

  s.homepage         = 'https://github.com/MLWOS/NCController'
  s.license          = 'MIT'
  s.author           = { 'Anton Bukov' => 'k06aaa@gmail.com' }
  s.source           = { :git => 'https://github.com/MLWOS/NCController.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'NCControler/*'
end
