class Problem
  attr_reader :name, :input_variable, :input,
    :output_variable, :output, :block

  def initialize(name, input, output)
    @name = name
    @input_variable, @input = input.to_a.first
    @output_variable, @output = output.to_a.first
  end

  def block_variable
    input_variable.to_s.chop
  end

  def example!(code)
    @example = true
    @block = code
    self
  end

  def example?
    @example
  end

  def loop!
    @loop = true
    self
  end

  def loop?
    @loop || @example
  end

  def assignment!
    @assignment = true
    self
  end

  def assignment?
    @assignment || @loop || @example
  end

  def render(template)
    ERB.new(File.read(template)).result(binding).gsub(/^\s*$\n/, '').chomp
  end
end

