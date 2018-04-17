class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
    def index?
      true
    end
    def create?
      if user.is_admin?
        true
      else
        false
      end
    end

    def new?
      if user.is_admin?
        create?
      else
        false
      end
    end

    def update?
      if user.is_admin?
        true
      else
        false
      end
    end

    def edit?
      if user.is_admin?
        update?
      else
        false
      end
    end

    def destroy?
      if user.is_admin?
        true
      else
        false
      end
    end
  end
end
