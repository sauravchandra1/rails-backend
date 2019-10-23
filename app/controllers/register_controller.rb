class RegisterController < ApplicationController 
    def create
        user = User.new
        user.name = params['name'],
        user.email = params['email'],
        user.imageurl = params['imageURL'],
        user.uid = params['uid'],
        user.save
        render json: {
            status: 'ok register controller',
            user: user
        }
    end
end
