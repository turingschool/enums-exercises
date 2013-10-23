require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = "test/**/*_test.rb"
end

desc "generate exercise test suites"
task :generate do
  require './lib/generator'
  Generator.generate
end

desc "generate a new generator"
task :new, :name do |t, args|
  require './lib/problem_generator'
  ProblemGenerator.new(EnumerableMethod.new(args[:name].to_sym)).write
end

task default: :test
