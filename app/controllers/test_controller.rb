class TestController < ApplicationController
  def index
    if rand > 0.5
      if rand > 0.5
        raise "This is an exception"
      end
    end
  end

  def qwerty
    raise StandardError.new "StandartError"
  end
end
