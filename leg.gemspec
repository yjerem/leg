Gem::Specification.new do |s|
  s.name        = 'leg'
  s.version     = '0.0.1'
  s.license     = 'MIT'
  s.summary     = 'Tool for creating step-by-step programming tutorials'
  s.author      = 'Jeremy Ruten'
  s.email       = 'jeremy.ruten@gmail.com'
  s.files       = Dir['lib/**/*.rb']
  s.homepage    = 'https://github.com/yjerem/leg'
  s.executables << 'leg'

  s.add_runtime_dependency 'rugged', '0.25.1.1'
  s.add_runtime_dependency 'redcarpet', '3.4.0'
  s.add_runtime_dependency 'rouge', '2.0.7'
end
