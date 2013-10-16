require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = "test/**/*_test.rb"
end

desc "generate exercise test suites"
task :generate do
  require './lib/generator'
  Generator.generate
end

task default: :test
