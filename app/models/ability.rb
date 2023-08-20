# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(admin)
    can :read, Product

    can :manage, Product, admin_id: admin.id if admin
    
  end
end
