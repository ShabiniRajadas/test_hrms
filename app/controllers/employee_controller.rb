class EmployeeController < ApplicationController

  # list out the employees in the index page
  def index
    @user=User.order("user_name").page(params[:page]).per(1)
    @search = Employee.search(params[:q])
    @use = @search.result
    @user = @use.order("id").page(params[:page]).per(2)
  end

  #list out the hr's in the user's list
  def hr
  	@user=User.all
  end

  #list out the managers in the user's list
  def manager
  @user=User.find(session['user_id'])
  @employee=@user.employee.subordinates
  end

  #list out the employees(common users)
  def employee
  end

end
