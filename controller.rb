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
end

post '/part_two' do
	puts params[:choice]
	 if "Live" == params[:choice]
	 	@title = "Failure"
	 	@ending = "Have fun living with your parents :("
	 	erb :ending
	elsif "Get your GED" == params[:choice]
		@title = "Not bad considering the circumstances"
		@ending = "You will work at a low paying job"
		@imagesource = "https://media.glassdoor.com/o/432/mcdonald-s-office.jpg"
		erb :ending
	elsif "Community College" == params[:choice]
		@choice1 = ""
	elsif "4 Year University" == params[:choice] 
		@choice1 = "Graduate School"
	elsif "Vocational School" == params[:choice]
	 	 	
	 end
end

