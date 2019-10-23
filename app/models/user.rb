class User < ApplicationRecord
    def self.find_or_create_from_userinfo(userinfo)
        print 'userserfsd;lfkjasdf0', params['name']
        user = where(uid: userinfo['uid']).first_or_create
        user.update(
            name: userinfo['uid'],
            email: userinfo['email'],
            imageurl: userinfo['imageurl'],
        )
        user
    end
end
