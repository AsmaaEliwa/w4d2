class Employee
    def initialize(name ,title,salary,boss)
        @name=name
        @title=title
        @salary=salary
        @boss=boss
    end
    attr_reader "name","title","salary","boss", "employees"

    def bonus(multiplier)
        bonus = salary * multiplier
    end

end


