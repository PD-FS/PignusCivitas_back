module Types
  class QueryType < Types::BaseObject
    #Colocar aqui consultas
    field :events, [EventType], null: true do
      description "Get all Events"
    end

    def events
      @events = Event.all
      if @events then
        return @events
      else
        return nil
      end
    end

  end
end
