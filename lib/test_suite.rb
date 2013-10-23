class TestSuite
  attr_reader :selector, :strategy, :problems
  def initialize(selector, strategy, problems)
    @selector = selector
    @strategy = strategy
    @problems = problems
  end

  def method
    selector.to_s.chomp('?')
  end

  def each?
    strategy == :each
  end

  def name
    pieces = []
    pieces.concat method.split("_").map(&:capitalize)
    pieces << "Pattern" if each?
    pieces << "Test"
    pieces.join("")
  end

  def filename
    pieces = []
    pieces << method
    pieces << "pattern" if each?
    pieces << "test.rb"
    pieces.join("_")
  end

  def template_name
    "./lib/templates/#{method}/#{strategy}.erb"
  end

  def render(template)
    ERB.new(File.read(template)).result(binding).chomp
  end
end
