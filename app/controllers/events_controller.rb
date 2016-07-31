class EventsController < InheritedResources::Base

  private

    def event_params
      params.require(:event).permit(:title, :start_date, :posted, :desctiption, :restoraunt_id, :user_id, :event_title)
    end
end

