class WelcomeController < ApplicationController
  def index
    @clients = Client.all
    @projects = Project.all
    @developers = Developer.all
  end
end
