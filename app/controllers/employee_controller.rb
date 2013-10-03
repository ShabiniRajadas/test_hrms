class EmployeeController < ApplicationController

  def index
    @user=User.order("user_name").page(params[:page]).per(1)
    @search = Employee.search(params[:q])
    @use = @search.result
    @user = @use.order("id").page(params[:page]).per(2)
  end

  def hr
  	@user=User.all
  end

  def manager
  @user=User.find(session['user_id'])
  @employee=@user.employee.subordinates
    
  end

  def employee
    
  end

end
