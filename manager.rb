require_relative "emp"
class Manager<Employee
    def initialize(name,title,salary,boss=nil)
        # @manager=manager
        super(name,title,salary,boss)
       
    end
    def bonus(multiplier)
        sum=0
        self.employees.each do |emp|
            if emp!=self 
            sum+=emp.salary
        bonus = sum* multiplier
            end
        end
    end
    
end
ashly=Manager.new("ashly","b",3)
p ashly
asmaa=Manager.new("asmaa","b",1233,ashly)
p asmaa