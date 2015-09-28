class Api::MailchimpController < ApplicationController

	def index


		gibbon = Gibbon::Request.new(api_key: "8a0760a940782446839b13687971e339-us10")
		#response = HTTP.get('https://8a0760a940782446839b13687971e339-us10.api.mailchimp.com/3.0/', :params => { :Authorization => "Basic 8a0760a940782446839b13687971e339-us10" }).to_s

		output = gibbon.lists.retrieve
		#output = {'foo' => response}.to_json
		render :json => output
	end

end
