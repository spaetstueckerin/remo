class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new # guest user
    
    if user.role_id == 1
      can :manage, :all
      
    elsif user.role_id == 2
      cannot :manage, Howto
      cannot :manage, User
      cannot :manage, Todo
      cannot :read, "/sites/internal"
    end
  end
end