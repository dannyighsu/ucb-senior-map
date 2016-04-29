class LinkedinController < ApplicationController
  def linkedin
    url = HTTParty.post("https://linkedin.com/uas/oauth2/accessToken", :body =>
    {
      :grant_type => 'authorization_code',
      :code => params[:code],
      :redirect_uri => "#{request.base_url}/linkedin/accessToken",
      :client_id => ENV["LinkedIn_ID"],
      :client_secret => ENV["LinkedIn_Secret"]
    }.to_json, :headers => { 'Content-Type' => 'application/json' })
    logger.info(url)
    response = HTTParty.get("https://api.linkedin.com/v1/people/~?format=json", :headers => { :Host => "api.linkedin.com", :Connection => "Keep-Alive", :Authorization => "Bearer #{url[access_token]}"})
    redirect_to new_user_registration_path
  end
end
