class Employee
    def initialize(name ,title,salary,boss)
        @name=name
        @title=title
        @salary=salary
        @boss=boss
        @employees=[]
        add_employee
    end
    attr_reader "name","title","salary","boss"
    def bonus(multiplier)
        bonus = salary* multiplier
    end
    def add_employee
       
        @employees<<self
        
    end
end

emp1=Employee.new("ali","emp",1,"asmaa")


p emp1