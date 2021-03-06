class WorkcampIntentionsController < ApplicationController
    active_scaffold :workcamp_intentions do |config|
      config.list.sorting = { :code => 'ASC' }
      config.columns = [ :code, :description_cz ]

    # debugger
    #   config.subform.

      highlight_required(config, WorkcampIntention)
    end
end
