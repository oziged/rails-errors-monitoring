class TestController < ApplicationController
  def index
    if rand > 0.5
      raise "This is an exception"
    end
  end
end
