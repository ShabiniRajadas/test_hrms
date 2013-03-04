class UserController < ApplicationController

  def index
  end

  def add_role
  	@role=Role.new
  end

  def role
	 @role=Role.new(params[:role])
  	if @role.save
		  redirect_to employee_index_path, :notice =>"The new role is created"
    else
      render "add_role"
    end
  end

  def new_user
    @user=User.new
  end

  def add_user
    @user = User.new(params[:user])
    @employee=@user.build_employee(params[:employee])
    @role=@user.build_role_user(:role_id => 4)
    if @user.save
      @user.employee.create_employee_image(params[:p])
      @user.employee.educations.create(params[:education])
      @user.employee.skills.create(params[:skill])
      @user.employee.certificates.create(params[:certificate])
      redirect_to hr_employee_index_path and return
    else 
      render "new_user" 
    end
  end  

  def edit_photo
    @employee=Employee.find(session['user_id'])
    @employee_image=EmployeeImage.new
  end

  def save_photo
    @employee=Employee.find(session['user_id'])  
    @employee.create_employee_image(params[:employee_image])
    redirect_to user_path(session['user_id'])   
  end

	def show
    @employee=Employee.find(params[:id])
    @education=@employee.educations
    @certificate=@employee.certificates
    @role=@employee.user.role
  end

  def edit
    @user=User.find(params[:id])
    @employee = @user.employee
    @role_user=@user.role_user
  end 

  def update
    @user=User.find(params[:id])
    @employee = @user.employee
    @role_user=@user.role_user
      if @employee.update_attributes(params[:employee])
        if @role_user.update_attributes(params[:role_user])
          redirect_to userprof_path(:education)
        end
      else 
        render "edit"
      end

  end

  def education
    @education=Education.find(@employee)
    if @education.update_attributes(params[:education])

      redirect_to user_path(session['user_id'])
    end
  end
end
