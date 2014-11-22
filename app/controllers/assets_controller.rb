# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
require 'open-uri'
class AssetsController < ApplicationController 
  before_filter :authenticate_user!  #authenticate for users before any methods is called 
  
      
  def index 
    @assets = current_user.assets      
  end
  
  def show 
    @asset = current_user.assets.find(params[:id]) 
  end
  
  def new
    @asset = current_user.assets.new
  end
  
  def create 
    @asset = current_user.assets.new(params[:asset]) 
    ... 
  end
  
  def edit 
    @asset = current_user.assets.find(params[:id]) 
  end
  
  def update 
    @asset = current_user.assets.find(params[:id]) 
    ... 
  end
  
  def destroy 
    @asset = current_user.assets.find(params[:id]) 
    ... 
  end
end