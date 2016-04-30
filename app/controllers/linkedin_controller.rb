class LinkedinController < ApplicationController

  def linkedin
    url = HTTParty.post("https://www.linkedin.com/uas/oauth2/accessToken?grant_type=authorization_code&code=#{params[:code]}&redirect_uri=#{request.base_url+linkedin_path}&client_id=#{ENV["LinkedIn_ID"]}&client_secret=#{ENV["LinkedIn_Secret"]}", :headers => { 'Content-Type' => 'application/x-www-form-urlencoded' })
    logger.info(url)
    response = HTTParty.get("https://api.linkedin.com/v1/people/~:(location,summary,positions,first-name,last-name)?format=json", :headers => { "Host" => "api.linkedin.com", "Connection" => "Keep-Alive", "Authorization" => "Bearer #{url["access_token"]}"})
    logger.info(response)
    newParams = {}
    if response["positions"]
      if response["positions"]["_total"] >= 1
        newParams[:position] = response["positions"]["values"][0]["company"]["name"]
      end
    end
    if response["location"]
      if response["location"]["country"]
        newParams[:location] = "#{response["location"]["name"]}, #{response["location"]["country"]["code"]}"
      else
        newParams[:location] = "#{response["location"]["name"]}"
      end
    end
    if response["firstName"]
      newParams[:first_name] = response["firstName"]
    end
    if response["lastName"]
      newParams[:last_name] = response["lastName"]
    end
    if response["summary"]
      newParams[:summary] = response["summary"]
    end
    redirect_to new_user_registration_path(newParams)
  end

end
