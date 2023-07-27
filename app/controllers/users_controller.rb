# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :shows]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end
