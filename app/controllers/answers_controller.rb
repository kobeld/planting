class AnswersController < ApplicationController
  def linux
  end
  
  def git
  end
  
  def css_usage
  end
  
  def google_api
    # return a hash structure
    results = Weather.get('Hangzhou')
    @current = results["xml_api_reply"]["weather"]["current_conditions"]
    @forecasts = results["xml_api_reply"]["weather"]["forecast_conditions"]
  end
  
  def files_operations
  end
  
  def duplicated_users
    @users = User.all
  end
  
  def home
  end
  
  
end
