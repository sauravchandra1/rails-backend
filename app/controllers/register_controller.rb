class RegisterController < ApplicationController 
    def create
        getUser = User.find_by(uid: params['uid'])
        if (getUser == nil) 
            getUser = User.new
            getUser.uid = params['uid']
        end
        getUser.name = params['name']
        getUser.email = params['email']
        getUser.imageurl = params['imageURL']
        getUser.save
        render json: {
            status: 'ok register controller',
            user: getUser
        }
    end
end
