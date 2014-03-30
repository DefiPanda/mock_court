class EventsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

	def index
      @event = Event.all
	end

	def show
      @event = Event.find(params[:id])
	end

	def new
      @event = Event.new
	end

	def create
      @event = Event.new(params[:event])
      if User.find_by_username(current_user.username).judge?
        @event.approved = true
      end
      puts @event
      if @event.save
         redirect_to events_path, :notice => "Your event is successfully added!"
      else
         render "new"
      end
	end
    
  def edit
      @event = Event.find(params[:id])
  end

  def update
      @event = Event.find(params[:id])
      if @event.update_attributes(params[:event])
        redirect_to events_path, :notice => "Your event is successfully updated"
      else
        render "edit"
      end
  end

  def destroy
      @event = Event.find(params[:id])
      @event.destroy
      redirect_to events_path, :notice => "Your event is successfully deleted"
  end
end
