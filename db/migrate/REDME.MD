# Create users model

 bin/rails g mirgation CreateUsers first_name:string last_name:string email:string

# Add field

 bin/rails g migration AddPasswordToUsers password:string

# ref

 bin/rails generate migration AddPostRefToComments post:references

