require 'sinatra'

get '/' do
	@choices = ["Choose Path", "Graduate", "Dropout"]
	erb :index
end

post '/' do
	if "Dropout" == params[:choice]
		@title = "You may want to rethink!"
		@choices = ["Choose Path", "Live with Parents", "Get your GED"]
		erb :index
	elsif "Graduate" == params[:choice]
		@title = "Good Choice!"
		@choices = ["Choose Path", "Community College", "4 Year University", "Vocational School"]
		erb :index
	 elsif "Live" == params[:choice]
	 	@title = "Failure"
	 	@ending = "Have fun living with your parents :("
	 	@imagesource = "http://cdn.financialsamurai.com/wp-content/uploads/2010/08/livingathome-300x203.jpg"
	 	erb :index
	elsif "Get" == params[:choice]
		@title = "Not bad considering the circumstances"
		@ending = "You will work at a low paying job"
		@imagesource = "https://media.glassdoor.com/o/432/mcdonald-s-office.jpg"
		erb :index
	elsif "Community" == params[:choice]
		@title = "Way to finish school!"
		@ending = "You will work at a low paying job"
		@imagesource = "http://i.imgur.com/kLFfRsD.jpg"
		erb :index
	elsif "4" == params[:choice] 
		@title = "Nice job getting in!"
		@ending = "You'll make bank"
		@imagesource = "http://www.apeshitmedia.com/lj/2010-01-01-01.jpg"
		erb :index
	elsif "Vocational" == params[:choice]
	 	 @title = "You know what you want to be!"
	 	 @ending = "You'll work in a field specific job"
	 	 @imagesource = "http://www.featurepics.com/FI/Thumb300/20071229/Funny-Plumber-558715.jpg"
	 	 erb :index
	 end
end

