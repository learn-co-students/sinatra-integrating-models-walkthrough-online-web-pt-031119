require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]
    
    # pass data from param[user_text] into a new instance of theTextAnalyzer class
    
    # @analyzed_text = TextAnalyzer.new(text_from_user)
     #the above can shortened to the following
      @analyzed_text = TextAnalyzer.new(params[:user_text])
 
    erb :results
  end
  
  # We now have the instance of TextAnalyzer saved to an instance variable called @analyzed_text. This can now be called from the results.erb view being rendered using web tags. 
end
