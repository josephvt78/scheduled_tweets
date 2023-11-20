class MainController < ApplicationController
    def index
        flash.now[:notice] = "Logged-in successfully"
        flash.now[:alert] = "Incorrect e-mail and password"
    end
end