class UsersController < ApplicationController
    def index
    end

private
    def user_params
        params.require(:user).permit(:name , :emali , )

    end
end
