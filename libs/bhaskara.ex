defmodule Bhaskara do

  def delta(a, b, c) do
    square = fn(x) -> x * x end
    (square.(b)) - (4 * a* c)
  end

  def calculate_first_root(b, delta, a) do
    square = fn(x) -> x * x end
    square_root = fn(x) -> :math.sqrt(x) end

    (square.(b)+square_root.(delta))/2*a
  end

  def calculate_second_root(b, delta, a) do
    square = fn(x) -> x * x end
    square_root = fn(x) -> :math.sqrt(x) end

    (square.(b)-square_root.(delta))/2*a
  end

end
