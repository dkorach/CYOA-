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
	 	@ending = "Have fun living with your parents"
		erb :ending
	elsif "Get your GED" == params[:choice2]
	elsif "Community College" == params[:choice2]
	elsif "4 Year University" == params[:choice2]
	elsif "Vocational School" == params[:choice2]
	 	 
			
	 	
	 end
end

post '/part_two'
