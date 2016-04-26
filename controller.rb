require 'sinatra'

get '/' do
	@choice_1 = "Choose Path"
	@choice_2 = "Graduate"
	@choice_3 = "Dropout"
	@choice_4 = "--"
	erb :index
end

post '/' do
	if "Dropout" == params[:choice]
		@title = "You may want to rethink!"
		@choice_1 = "Choose Path"
		@choice_2 = "Live with Parents"
		@choice_3 = "Get your GED"
		@choice_4 = "--"
		erb :part_two
	elsif "Graduate" == params[:choice]
		@title = "Good Choice!"
		@choice_1 = "Choose Path"
		@choice_2 = "Community College"
		@choice_3 = "4 Year University"
		@choice_4 = "Vocational School"
		erb :part_two
	end

	 if "Live with Parents" == params[:choice2]
	 	@title = "Failure"
	 	@ending = "Have fun living with your parents :("
	 	@imagesource = "http://img.thesun.co.uk/aidemitlum/archive/01896/FamilyProbs_1896542a.jpg"
		erb :ending
	elsif "Get your GED" == params[:choice2]
		@title = "Not bad considering the circumstances"
		@ending = "You will work at a low payin job"
		@imagesource = "https://media.glassdoor.com/o/432/mcdonald-s-office.jpg"
		erb :ending
	elsif "Community College" == params[:choice2]
		@choice1 = ""
	elsif "4 Year University" == params[:choice2] 
		@choice1 = "Graduate School"
	elsif "Vocational School" == params[:choice2]
	 	 
			
	 	
	 end
end

post '/part_two'
