class WelcomeController < ApplicationController
  before_filter :authenticate_employee!
  def homepage
    
  end
end
