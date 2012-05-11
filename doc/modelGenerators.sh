rails generate model book
rails generate model technicalBook --parent=book
rails generate model bookVersion title:string edition:string  isbn:string published:datetime
rails generate model content location:string media_type:string
rails generate model author first_name:string last_name:string full_name:string birthday:datetime birthplace:string
rails generate model publisher name:string
 