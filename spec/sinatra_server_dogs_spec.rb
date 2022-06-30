ENV['APP_ENV'] = 'test'

require_relative '../sinatra_server_dogs'
require 'rspec'
require 'rack/test'

RSpec.describe "The dog server" do
    include Rack::Test::Methods

    def app
        Sinatra::Application
    end

    it 'confirms rspec is woring' do
      expect(true).to be(true)
    end

    it 'returns a greeting with no parameter given' do
        get '/'
        expect(last_response).to be_ok
    end

    it 'returns a greeting containing Hello stranger with no argument given' do
        get '/'
        expect(last_response.body).to include("Hello stranger")
    end



end

