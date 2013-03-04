class SessionController < ApplicationController
	def index
	end
	
	def authenticate
		user_name =  params['session']['user_name']
		password =  params['session']['password']
		@user = User.find_by_user_name(user_name)
		
		if @user
			if @user.password == password
				session['user_id'] = @user.id
				if @user.role.role_name == 'admin'
					redirect_to employee_index_path and return 
				end	
				if @user.role.role_name == 'hr'
					redirect_to  hr_employee_index_path and return
				end	
				if @user.role.role_name == 'manager'
					redirect_to  manager_employee_index_path and return
				end	
				if @user.role.role_name == 'employee'
					redirect_to   employee_employee_index_path and return
				end
			else
				redirect_to root_path, :notice => "Incorrect user name or password " and return
			end
		
		else
			flash[:notice] = "No such user exist, Please register to continue "
			redirect_to root_path and return
		end
	
	end

	def logout
		reset_session
		redirect_to session_index_path and return
	end
end
