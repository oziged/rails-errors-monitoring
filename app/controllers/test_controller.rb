class TestController < ApplicationController
  def index
    if rand > 0.5
      if rand > 0.5
        raise "This is an exception"
      else
        raise "This is some other exception"
      end
    end
  end
end
