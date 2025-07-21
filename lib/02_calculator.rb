def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  array.sum
end

def multiply(a, b)
  a * b
end

def power(a, b)
  a ** b
end

def factorial(n)
  return 1 if n == 0
  (1..n).reduce(1) { |prod, x| prod * x }
end
