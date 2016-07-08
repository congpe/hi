# primitive loop for array
a = ["apple","banana","orange","cherry"]

pr = 546
n = 0
print "while method for array: "
while n<a.length
  print "#{a[n]}, "
  n=n+1
end
puts
# loop method for array
y = 0
print "loop method for array: "
loop do
  break if y==a.length
  print "#{a[y]}, "
  y=y+1
end
puts
# iterator for array
print "iterator for array: "
a.each do |x|
  print x+", "
end
puts

snowy_owl = { "type" => "Bird", "diet" => "Carnivore", "life_span" => "12 years" }
snowy_owl["weight"] = "0.5 ounces"
# primitive loop for hash
print "while method for hash: "
m = 0
while m<snowy_owl.length
  print snowy_owl.keys[m]+": "+snowy_owl.values[m]+", "
  m += 1
end
puts
# loop method for hash
z = 0
print "loop method for hash: "
loop do
  break if z==snowy_owl.length
  print snowy_owl.keys[z]+": "+snowy_owl.values[z]+", "
  z=z+1
end
puts
# iterator for hash
print "iterator for hash: "
snowy_owl.each do |key,value|
  print key+": "+value+", "
end
puts

=begin
class Array
  def reverse
    i=1
    while i<self.length
      r=i
      loop do
        break if r==0
        self[r],self[r-1]=self[r-1],self[r]
        r=r-1
      end
      i=i+1
    end
    return self
  end
end
=end

# implement reverse on array
class Array
  def reverse
    i=self.length-1
    loop do
      break if i-self.length+i+1==0 || i-self.length+i+1==-1
      self[i],self[self.length-i-1]=self[self.length-i-1],self[i]
      i=i-1
    end
    return self
  end
end

puts "implement reverse for array: #{a.reverse}"

# implement myeach on array
class Array
  def myeach
    i=0
    loop do
      break if i==self.length
      yield(i,self[i])
      i=i+1
    end
  end
end

print "implement myeach for array: "
a.myeach do |index,value| 
  print index, ": ",value, ", "
end
puts

# implement loop
def loop
  while true
    yield
  end
end
print "implement loop: "
f=1
loop do
  break if f==5
  print f,", "
  f=f+1
end
puts
