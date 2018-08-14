class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token
  @@indik = nil


  def index
  end

  def some_action
    a = 0
   $indik = params['indicator_working'].to_i
    while @@indik != 0
      a += 1
      sleep 1
      puts a
      puts @@indik
    end
  end
end
