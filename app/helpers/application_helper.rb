module ApplicationHelper
    def status_student
    
            if @student.active== true
                "active"
            else
                "inactive"
            end            
          
    end
end
