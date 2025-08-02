/*syntax to create login
create login login_name with password = 'password'*/

create login newloginn with password = '1234'

/*syntax to create user
create user user_name for login login_name*/

create user newuserr for login newlogin

create user newuser1 for login newlogin
create login newloginn with password = '12345'

