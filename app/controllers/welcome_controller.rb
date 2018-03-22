class WelcomeController < ApplicationController
  def index
    puts params.permit(:id, :attr1, :attr2)
  end
end
