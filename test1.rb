class Customer
    attr_accessor :name, :last
    def initialize(name, last)
        @name = name
        @last = last
    end
    def hello
        @name
    end
    def no
        @no
    end
end
class VIPCustomer < Customer
    attr_accessor :name, :no
    def initialize(name, no)
        @name = name
        @no = no
    end
    def last
        @last
    end
end
vip = VIPCustomer.new("hola", "no")
puts vip.hello
puts vip.no

def mystery_sequence(start1, start2, limit=4)
      yield start1
      yield start2
      nextval = start1 + start2
    1.upto(limit) do
        yield nextval
        nextval, start2 = nextval + start2, nextval
    end
end
s = []
#mystery_sequence(2,3) do |elt| ; s<<elt; end
#mystery_sequence(2,3).each do |elt| ; s<<elt; end
print s
#puts Array.instance_of?

class C ; end
class B < C ; end
class A < B ; end
a = A.new
b = B.new
puts  b.respond_to?('class')
#puts a.superclass == b.class
puts A.superclass == B
a.class.ancestors.include?(C)
x = [1,2,3]
x.send :[]=,0,2
x[0] + x.[](1) + x.send(:[],2)
puts x