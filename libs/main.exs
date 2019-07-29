a_coeficient = Float.parse(IO.gets("Insert the 'a' coeficient: "))
b_coeficient = Float.parse(IO.gets("Insert the 'b' coeficient: "))
c_coeficient = Float.parse(IO.gets("Insert the 'c' coeficient: "))

{a, _rest} = a_coeficient
{b, _rest} = b_coeficient
{c, _rest} = c_coeficient

delta = Bhaskara.delta(a,b,c)

if(delta == 0) do
  IO.puts "Exists only one real roots"
  if(Bhaskara.calculate_first_root(b, delta, a) == Bhaskara.calculate_second_root(b, delta, a)) do
    IO.puts Bhaskara.calculate_first_root
  end
end

if(delta < 0) do
  IO.puts "Don't exists real roots"
end

if(delta > 0) do
  IO.puts "Exists two real roots"

  first_root = Bhaskara.calculate_first_root(b, delta, a)
  second_root = Bhaskara.calculate_second_root(b, delta, a)

  IO.puts first_root
  IO.puts second_root
end
