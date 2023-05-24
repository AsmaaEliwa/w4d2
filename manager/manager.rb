require_relative "emp"
class Manager<Employee

    attr_accessor :employees

    def initialize(name,title,salary,boss=nil)
        super(name,title,salary,boss)
        @employees = []
       
    end

    def add_employee(emp)
        @employees << emp
    end
    

    def bonus(multiplier)
        sum=0
        employees.flatten.each do |employee|
            sum += employee.salary
            until employee.employees.empty?
                sum += employee.employees.shift.salary
            end
        end
                
        # end
        bonus = sum * multiplier
        bonus
    end
    
end


ashley=Manager.new("ashley","manager",100)
michelle=Manager.new("michelle", "manager", 20, ashley)
asmaa=Manager.new("asmaa","manager", 50, michelle)


sam=Employee.new("sam", "emp", 30, asmaa)
david=Employee.new("david","emp", 20, asmaa)

ashley.add_employee(michelle)
michelle.add_employee(asmaa)
asmaa.add_employee(david)
asmaa.add_employee(sam)

# p ashley.employees
p ashley.bonus(1)
# p asmaa.employees
# p ashley.bonus(1)
# p ashley.employees

