require "sinatra"
require_relative "total.rb"

get '/' do #Makes homepage
	erb :index #homepage
	
end
post '/name' do
	name = params[:user_name].capitalize
	#Naming form and sending back to be used as a paramater
	redirect'/age?user_name='+name
	#Asking if age exists, redirects and takes user_name with it. 
end
get '/age' do
	name = params[:user_name].capitalize
	erb :get_age, :locals=> {:name=> name}
end
post '/age' do
	age = params[:age]
	name = params[:user_name].capitalize
	redirect '/haircolor?user_name=' + name + '&age=' + age
end
get '/haircolor' do
	age = params[:age]
	name = params[:user_name].capitalize
	erb :haircolor, :locals => {:name=> name, :age=> age}

end

post '/haircolor' do
	age = params[:age]
	name = params[:user_name].capitalize
	haircolor = params[:haircolor]
	redirect '/eyecolor?user_name=' + name + '&age=' + age + '&haircolor=' + haircolor	
end
get '/eyecolor' do
	name = params[:user_name].capitalize
	age = params[:age]	
	haircolor = params[:haircolor]
	erb :eyecolor, :locals => {:name=> name, :age=> age, :haircolor=> haircolor}
end
post '/eyecolor' do
	name = params[:user_name].capitalize
	age = params[:age]
	haircolor = params[:haircolor]
	eyecolor = params[:eyecolor]
	redirect '/fav_foods?user_name=' + name + '&age=' + age + '&haircolor=' + haircolor + '&eyecolor=' + eyecolor
end
get '/fav_foods' do
	name = params[:user_name].capitalize
	age = params[:age]	
	haircolor = params[:haircolor]
	eyecolor = params[:eyecolor]
	erb :fav_foods, :locals => {:name=> name, :age=> age, :haircolor=> haircolor, :eyecolor=> eyecolor}
end	
post '/fav_foods' do
	name = params[:user_name]
	age = params[:age]
	haircolor = params[:haircolor]
	eyecolor = params[:eyecolor]
	fav_foods = params[:fav_foods]
	redirect '/fav_drink?user_name=' + name + '&age=' + age + '&haircolor=' + haircolor + '&eyecolor=' + eyecolor + '&fav_foods=' + fav_foods
end
get '/fav_drink' do
	name = params[:user_name]
	age = params[:age]
	haircolor = params[:haircolor]
	eyecolor = params[:eyecolor]
	fav_foods = params[:fav_foods]
	erb :fav_drink, :locals => {:name=> name, :age=> age, :haircolor=> haircolor, :eyecolor => eyecolor, :fav_foods => fav_foods}
end
post '/fav_drink' do	
	name = params[:user_name]
	age = params[:age]
	haircolor = params[:haircolor]
	eyecolor = params[:eyecolor]
	fav_foods = params[:fav_foods]
	fav_drink = params[:fav_drink]
	redirect '/three_numbers?user_name=' + name + '&age=' + age + '&haircolor=' + haircolor + '&eyecolor=' + eyecolor + '&fav_foods=' + fav_foods + '&fav_drink=' + fav_drink
end
get '/three_numbers' do
	age = params[:age]
	name = params[:user_name].capitalize
	haircolor = params[:haircolor]
	eyecolor = params[:eyecolor]
	fav_foods = params[:fav_foods]
	fav_drink = params[:fav_drink]

	erb :three_numbers, :locals => {:name=> name, :age=> age, :haircolor=> haircolor, :eyecolor => eyecolor, :fav_foods => fav_foods, :fav_drink=> fav_drink}
end
post '/three_numbers' do
	name = params[:user_name].capitalize
	age = params[:age]
	haircolor = params[:haircolor]
	eyecolor = params[:eyecolor]
	fav_foods = params[:fav_foods]
	fav_drink = params[:fav_drink]
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
	total = total(num1.to_i, num2.to_i, num3.to_i)
	redirect '/total?user_name=' + name + '&age=' + age + '&haircolor=' + haircolor + '&eyecolor=' + eyecolor + '&fav_foods=' + fav_foods + '&fav_drink=' + fav_drink + '&num1=' + num1 + '&num2='+ num2 + '&num3=' + num3 + '&total=' + total
end
get '/total' do
	
	name = params[:user_name].capitalize
	age = params[:age]	
	haircolor = params[:haircolor]
	eyecolor = params[:eyecolor]
	fav_foods = params[:fav_foods]
	fav_drink = params[:fav_drink]
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
	total = params[:total]
	erb :total, :locals => {:name=> name, :age=> age, :haircolor=> haircolor, :eyecolor => eyecolor, :fav_foods => fav_foods, :fav_drink=> fav_drink, :num1=> num1, :num2 => num2, :num3 => num3, :total => total}	
end
post '/total' do
# 		puts "MADE IT TO POST TOTAL DO"
# 	name = params[:user_name].capitalize
# 	puts "name = #{name}"
# 	age = params[:age]
# 	puts "age = #{age}"
# 	haircolor = params[:haircolor]
# 	puts "haircolor = #{haircolor}"
# 	eyecolor = params[:eyecolor]
# 	puts "eyecolor = #{eyecolor}"
# 	fav_foods = params[:fav_foods]
# 	puts "fav_foods = #{fav_foods}"
# 	num1 = params[:num1].to_i
# 	puts "num1 = #{num1}"
# 	num2 = params[:num2].to_i
# 	puts "num2 = #{num2}"
# 	num3 = params[:num3].to_i
# 	puts "num3 = #{num3}"
# 	total = total(num1, num2, num3)
# 	total = params[:total]
# 	puts "total = #{total}"
# total
end
