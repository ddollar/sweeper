@config.name     = "sweeper"

require "lib/#{@config.name}"

@config.version  = Sweeper.version
@config.summary  = "Sweep a directory into subdirectories by age"
@config.homepage = "http://peervoice.com/software/#{@config.name}"

@config.author_name  = "David Dollar"
@config.author_email = "ddollar@gmail.com"