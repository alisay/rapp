class PostsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :setup_data

    def home
        render "home"
    end

    def create
        session[:magic_word] = params[:magic_word]
        redirect_to root_path
    end

    def new
        
    end

    def setup_data
        session[:magic_word] = "mephistopheles" unless session[:magic_word]
        @magic_word = session[:magic_word]
    end
    
end
