#!/usr/bin/env ruby

class FileComp
  attr_accessor :dirname
  # Create the object
  def initialize()
    puts "Initialized"
  end
  def getFilesList
    puts "getFilesList called"
    pwd = Dir.pwd
    puts "pwd: #{pwd}"
    @dirname = "*.*"
    puts "#{@dirname}"

    Dir.glob("/Users/mvaughn/Documents/Workspace/SQA_505/44_68/**/*").each do |fname|
    #Dir.glob("*/{@dirname}").sort_by{|fname| File.size(fname)}.reverse[0..9].each do |fname|
    #Dir['**/*'].each { |f| puts f }
      puts "#{fname}"
    end
  end
end 

if __FILE__ == $0
  fc = FileComp.new
  fc.getFilesList
  #fc.compareFiles
  #fc.report
end
