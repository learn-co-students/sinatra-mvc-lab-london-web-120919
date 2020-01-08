# frozen_string_literal: true

require_relative 'config/environment'
require_relative './models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # pl = PigLatinizer.new
    @pig_latin = PigLatinizer.new.translate(params[:user_phrase])
    erb :result
  end
end
