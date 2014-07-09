module RsPaginator
  class PageInfo

    include ActionView::Context
    include ActionView::Helpers::TagHelper
    include ActionView::Helpers::OutputSafetyHelper

    def initialize(objects, context)
      @objects = objects
      @context = context
    end

    def render
      content_tag(:div, class: 'page_info') do
        if @objects.empty?
          @context.t('rs_paginator.page_info.empty')
        elsif @objects.total_pages == 1 && @objects.count == 1
          @context.t('rs_paginator.page_info.one')
        elsif @objects.total_pages == 1
          @context.t('rs_paginator.page_info.one_page', total: @objects.total)
        else
          from = @objects.per_page * (@objects.page - 1) + 1
          to = from + @objects.count - 1
          @context.t('rs_paginator.page_info.other', from: from, to: to, total: @objects.total)
        end
      end
    end

  end
end
