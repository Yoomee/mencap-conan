# Don't delete comments! They are used in gems for adding abilities
class Ability
  
  include CanCan::Ability
  
  def initialize(user)
    
    # open ability
    can :create, Enquiry
    can [:show, :index], Page, :draft => false

    if user.try(:admin?)
      can :manage, :all   
      can :destroy, Page   
      # admin ability
    elsif user
      # user ability
      can :manage, User, :id => user.id      
    end
    
  end
  
end
