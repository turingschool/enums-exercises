class TestSuite
  attr_reader :method, :strategy, :problems
  def initialize(method, strategy, problems)
    @method = method.to_s
    @strategy = strategy
    @problems = problems
  end

  def each?
    strategy == :each
  end

  def name
    pieces = []
    pieces << method.capitalize
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
