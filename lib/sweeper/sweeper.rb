#!/usr/bin/env ruby -wKU
require 'fileutils'

module Sweeper
class Engine
  
  def initialize(sweepers)
    @sweepers = sweepers
  end
  
  def sweep(path)

    @sweepers_by_path = {}
    @sweepers_by_interval = []

    @sweepers.each do |sweeper, interval|
      sweeper_path = File.join(path, sweeper)
      FileUtils.mkdir_p(sweeper_path)
      @sweepers_by_path[sweeper_path] = interval
      @sweepers_by_interval << [interval, sweeper_path]
    end

    @sweepers_by_interval = @sweepers_by_path.to_a.sort_by { |s| s[1] }.reverse

    sweep_path(path)
    @sweepers.each do |dir, interval|
      sweep_path(File.join(path, dir))
    end
    
  end
    
  private ##################################################################
  
  def sweep_path(path)

    Dir[File.join(path, '*')].each do |file|
      next if @sweepers_by_path[file]
      atime = File.new(file).atime
      @sweepers_by_interval.each do |sweeper, interval|
        if (Time.now - interval) > atime
          File.rename(file, File.join(sweeper, File.basename(file)))
          break
        end
      end
    end
  
  end

end
end