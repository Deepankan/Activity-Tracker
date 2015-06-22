class UsersController < ApplicationController
  def create
    User.create(params[:user].permit(:role, :email, :password, :password_confirmation))
    redirect_to :back
  end

  def application_details
    @data = []
    #users = []
    users = User.all
    # if current_user.is_manager?
    #   users = User.emp_users
    # else
    #   users << current_user
    # end
    users.each do |u|
      temp = {}
      temp[:email] = u.email
      temp[:task] = u.task.present? ? u.task.task_name : ""
      temp[:activities] = u.activities
      @data << temp
    end
  end
end
