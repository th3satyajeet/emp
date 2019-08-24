class EmployeesController<ApplicationController

    def home
     @employees=Employee.all
    end
    def edit
        @emp=Employee.find(params[:id])
        
    end
    def delete
        @emp=Employee.find(params[:format])
        @emp.destroy
        redirect_to root_path
    end

    def update
        byebug
      if @emp.update(employee_params) 

        redirect_to root_path

      else 

        render 'edit'
      end
      
    end
    private
    def employee_params
        params.require(:employee).permit(:emp_name,:dsg,:sal,:loc)
    end
end