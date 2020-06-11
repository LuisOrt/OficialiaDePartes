class RegistroPolicy < ApplicationPolicy
  def edit?
    @user.oficialia?
  end

  def destroy?
  	@user.admin? 
  end
end