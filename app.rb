require 'sinatra'
require 'sinatra/reloader' if development? 
require 'pry'
require_relative './models/calc_functions'



get '/' do 
  @title = 'Home'
  erb :home
end
 
post '/navigate' do 

  case params[:destination]
  when 'baisc' then redirect to '/basic'
  when 'mortgage' then redirect to '/mortgage'
  when 'bmi' then redirect to '/bmi'
  when 'speed' then redirect to '/speed'
  else  
    @error = 'Invalid page selected!'
    erb :home
  end
end

#Basic calculator GET & POST

get '/basic' do
  @title = 'Basic Calculator'
  erb :basic 
end

post '/basic_calculation' do 
  @title = 'Basic Calculator'
  case params[:operator]
  when '+' then 
    @result = Basic.add(params[:num1], params[:num2])
    erb :basic
  when '-' then 
    @result = Basic.neg(params[:num1], params[:num2])
    erb :basic
  when '*' then 
    @result = Basic.times(params[:num1], params[:num2])
    erb :basic
  when '/' then 
    @result = Basic.divide(params[:num1], params[:num2])
    erb :basic
  else  
    @error = 'I\'m sorry, we didnt recognice that operator'
    erb :basic
  end
end



#Morgate Calculator GET & POST 

get '/mortgage' do
  @title = 'Mortgage Calculator'
  erb :mortgage
end

post '/mortgage_calculation' do 
  @result = Mortgage.calc(params[:loan], params[:apr], params[:months])
  erb :mortgage
end

get '/bmi' do
  @title = 'BMI Calculator'
  erb :bmi
end

post '/bmi_calculation' do 
  @result = Bmi.calc(params[:units], params[:height], params[:weight])
  erb :bmi
end

get '/speed' do
  @title = 'Speed'
  erb :speed
end



# ## Basic:
# Do basic arithmetic, adding, subtracting, multiplying and dividing two numbers. 

# ## Mortgage:
# Calculate the monthly payment when given the other variables as input.

# ## BMI:
# Calculate the BMI when given the height and weight.

# ## Distance:
# MPG – what is the fuel efficiency of the car? £PG – how much does gas cost per gallon? 

# Speed – how fast will you drive?
# The output is a string: "Your trip will take 3.5 hours and cost £255.33."
# For every 1 MPH over 60 MPH, reduce the the MPG by 2 MPG. (i.e. a car that normally gets 30 mpg would only get 28 mpg if its speed were 61 mph. Yes this gets silly at high speed where mpg goes to zero or gets negative.)

# ## Something Unique
# Add a unique calculation or calculator function of your own preference.
# ## Hints:
# * You're probably going to want a route handler for each calculation type...
# * ... and a separate view for each calculation type.
# * You'll most likely pass in the user-supplied parameters using url params.
# * It would also be nice to have some navigation links visible on every page so that the user can easily jump from one calculator type to another.
