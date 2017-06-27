
def celcius(c)
  return 9.0*c.to_f/5.0 + 32
end

def fahrenheit(c)
  return (c - 32) * 5.0.to_f/9
end

def kgTolb(x)
  return (x * 2.2.to_f)
end

def money(m)
  return (m * 49.45.to_f)
end

def area(a,b)
  return (a * b)/2
end

#taxi initial 35 pesos,2 per 400meters sm to calle uno 2.6km

def taxi(d)
  return (d /400.to_f) * 2 + 35
end

puts celcius(23).round(2)
puts fahrenheit(100).round(2)
puts kgTolb(52).round(2)
puts money(5).round(2)
puts area(5.8,2.7).round(2)
puts taxi(2600).round(2)
