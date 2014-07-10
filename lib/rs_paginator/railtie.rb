require 'rs_paginator/view_helpers'

module RsPaginator
  class Railtie < Rails::Railtie

    initializer "rs_paginator" do
      ActionView::Base.send :include, RsPaginator::ViewHelpers
    end

  end
end
