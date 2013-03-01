class EmployeeController < ApplicationController

  def index
  	#@user=User.all
    @user=User.order("user_name").page(params[:page]).per(1)
     #@q = Employee.search(params[:q])
     #@search = @q.result(:distinct => true)
       #def index
      @search = Employee.search(params[:q])
      @use = @search.result
      @user = @use.order("id").page(params[:page]).per(2)
   #end
  end

  def hr
  	@user=User.all
    #@user=User.order("user_name").page(params[:page]).per(1)
  end

  def manager
  @user=User.find(session['user_id'])
  @employee=@user.employee.subordinates
    
  end

  def employee
  end

  #def search
    #@q = Employee.search(params[:q])
    #@employee = @q.result(:distinct => true)
  #end


end
