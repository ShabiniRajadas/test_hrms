class UserprofController < Wicked::WizardController

steps :education, :certificate, :skill

  def show
# render :text => params[:id] and return 

  	user = User.find(session[:user_id])
  	  	#render :text => user.employee.to_yaml and return

  	@employee = user.employee
    @education = @employee.educations
    @certificate = @employee.certificates
    @skills = @employee.skills
  	render_wizard
  end

  def edit
  	user = User.find(session[:user_id])
    @employee = user.employee
    #@education=@employee.education
  end

  def update	
    #render :text => params[:id] and return 
	user = User.find(session[:user_id])
    @employee = user.employee

    case step
    	when :education
    		@employee.update_attributes(params[:education])
    	
   		when :certificate
    		@employee.update_attributes(params[:certificate])
    
    	when :skill
    		@employee.update_attributes(params[:skill])
    	
  	end
  	render_wizard
end
end
