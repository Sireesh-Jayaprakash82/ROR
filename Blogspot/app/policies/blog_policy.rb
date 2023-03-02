class BlogPolicy < ApplicationPolicy
    attr_reader :user, :blog
    def initialize(user, blog)
        @user = user
        @blog = blog
    end
    
    def create?
        user.admin? || @blog.name != "Sireesh"
    end
end