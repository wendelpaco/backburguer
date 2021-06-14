class HomeController < ApplicationController
  def index
    @png = ActionController::Base.helpers.asset_path('/favicon.png')
  end
end
