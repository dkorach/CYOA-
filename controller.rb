require 'sinatra'

get '/' do
	@choice_1 = "Choose Path"
	@choice_2 = "Graduate"
	@choice_3 = "Dropout"
	erb :index
end

post '/part_two' do
	if "Dropout" == 
		@title = "You may want to rethink!"
		erb :part_two
	elsif "Graduate"
		@title = "Good Choice!"
		erb :part_two
	end
end
