class UsersController < ApplicationController
    before_action :authenticate_user!, only: [:top]

    def top
    end

    def show
    end
end
