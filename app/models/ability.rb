class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #  user ||= User.new # guest user (not logged in)
       if user.admin?
         can :manage, :all
       elsif user.seller?
         can :read, Item

         can :edit, Item do |item|
          item.try(:user) == user
         end

         can :update, Item do |item|
          item.try(:user) == user
         end

         can :destroy, Item do |item|
          item.try(:user) == user
         end
         
         can :create, Item
       elsif user.buyer? || user.regular?
         can :read, :Item
       end
  end
end
