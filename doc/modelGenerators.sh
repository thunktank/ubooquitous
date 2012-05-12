rails g model book
# rails g model technicalBook --parent=book
rails g model bookVersion title:string edition:string  isbn:string published:datetime
rails g model content location:string media_type:string
rails g model author first_name:string last_name:string full_name:string birthday:datetime birthplace:string
rails g model publisher name:string
rails g model library
rails g model member name:string email:string 
rails g model identity name:string email:string password_digest:string


