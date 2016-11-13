Gem::Specification.new do |s|
  s.name        = 'simple_process_runner'
  s.version     = '0.0.1'
  s.date        = '2016-11-13'
  s.summary     = "Run shell-less processes ansychronously and optionally wait for them to complete"
  s.description = "Allows the user to run processess ansychronously and without a shell, optionally the user can wait for them to complete and return data"
  s.authors     = ["Brett Sykes", "Nick Doyle"]
  s.email       = 'brettcsykes@gmail.com'
  s.homepage    = 'https://github.com/bretts/simple_process_runner'
  s.files       = Dir.glob("{lib}/**/*")
  s.license     = 'MIT'
end