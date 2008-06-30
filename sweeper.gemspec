
spec = Gem::Specification.new do |s|

  s.executables = [ 'sweep' ]
  
  s.name     = "sweeper"
  s.version  = "0.1.0"
  s.summary  = "Sweep a directory into subdirectories by age"
  s.homepage = "http://peervoice.com/software/sweeper"
  
  s.author   = "David Dollar"
  s.email    = "ddollar@gmail.com"
  
  s.files    = ["bin/sweep","lib/core_ext","lib/core_ext/fixnum.rb","lib/sweeper","lib/sweeper/sweeper.rb","lib/sweeper.rb"]
  s.platform = Gem::Platform::RUBY
                   
  s.rubyforge_project = "sweeper"
  s.require_path      = "lib"
  s.has_rdoc          = true
  s.extra_rdoc_files  = ["README"]
  
end