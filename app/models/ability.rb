# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # alias_action :create, :read, to: :user_actions
    if user
      if user.kind == 'user'
        can :access, :rails_admin
        #can :dashboard, :all
        can :read, :dashboard
        can [:create, :read], Timetable, user_id: user.id
        can :read, User, id: user.id
      elsif user.kind == 'manager'
        can :manage, :all
      end
    end
  end
end
