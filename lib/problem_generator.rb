require 'erb'

class ProblemGenerator
  attr_reader :method

  def initialize(method)
    @method = method
  end

  def name
    method.to_s.chomp('?')
  end

  def class_name
    name.split("_").map(&:capitalize).join('')
  end

  def render
    ERB.new(File.read(template)).result(binding).chomp
  end

  def template
    "./lib/templates/problem.erb"
  end

  def write
    File.open("./lib/generator/#{name}_problem.rb", 'wb') do |file|
      file.write render
    end
    system("cp -r ./lib/templates/method ./lib/templates/#{name}")
  end
end

