class CommentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
    def index?
      if user.is_admin?
        true
      end
    end

    def show?
      scope.where(:id => record.id).exists?
    end

    def create?
      if user.is_admin?
        true
      end
    end

    def new?
      create?
    end

    def update?
      if user.is_admin?
        true
      end
    end

    def edit?
      update?
    end

    def destroy?
      if user.is_admin?
        true
      end
    end
  end
end
