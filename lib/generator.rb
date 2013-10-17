require 'erb'
require_relative 'problem'
require_relative 'exercise'
require_relative 'test_suite'
require_relative 'generator/map_problem'
require_relative 'generator/select_problem'

class Generator
  def self.problems
    [
      MapProblem,
      SelectProblem
    ]
  end

  def self.generate
    problems.each do |problem|
      problem.test_suites.each do |suite|
        File.open("./exercises/#{suite.filename}", 'wb') do |file|
          file.write suite.render('./lib/templates/suite.erb')
        end
      end
    end
  end
end
