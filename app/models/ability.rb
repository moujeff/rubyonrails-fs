# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(admin)

    return unless admin.present?
    can :manage, Product, admin_id: admin.id if admin
    
  end
end
