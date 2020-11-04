class TrainersController < ApplicationController
  before_action :find_id, only: [:show]

  def index
    @trainers = User.all
  end

  def show

  end

  def new
  end

  def create
  end

  def destroy
  end
end

private

def find_id
  @trainer = User.find(params[:id])
end
