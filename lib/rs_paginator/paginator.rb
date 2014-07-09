module RsPaginator
  class Paginator

    include ActionView::Context
    include ActionView::Helpers::TagHelper
    include ActionView::Helpers::OutputSafetyHelper
    
    def initialize(objects, context)
      @objects = objects
      @context = context
      @total_pages = objects.total_pages
      @current_page = objects.page
    end

    def render
      content_tag(:ul, class: %w[pagination pagination-sm]) do
        prev_link + page_links + next_link
      end
    end

  private

    def prev_link
      first = @current_page == 1
      content_tag(:li, class: first ? 'disabled' : nil) do
        url = first ? '#' : @context.params.merge(page: @current_page - 1)
        @context.link_to(raw('&laquo;'), url)
      end
    end

    def next_link
      last = @current_page == @total_pages
      content_tag(:li, class: last ? 'disabled' : nil) do
        url = last ? '#' : @context.params.merge(page: @current_page + 1)
        @context.link_to(raw('&raquo;'), url)
      end
    end

    def page_links
      raw visible_pages.map { |i| i ? page_link(i) : gap }.join
    end

    def page_link(i)
      current = i == @current_page
      content_tag(:li, class: current ? 'active' : nil) do
        url = current ? '#' : @context.params.merge(page: i)
        @context.link_to(i, url)
      end
    end

    def gap
      content_tag(:li, @context.link_to(raw('&#x22ef;'), '#'), class: 'disabled')
    end

    def visible_pages
      if @total_pages <= 11
        1..@total_pages
      elsif @current_page <= 6
        (1..8).to_a + [nil, @total_pages-1, @total_pages]
      elsif @current_page > @total_pages - 6
        [1, 2, nil] + ((@total_pages - 8)..@total_pages).to_a
      else
        [1, 2, nil] + ((@current_page - 2)..(@current_page + 2)).to_a + [nil, @total_pages-1, @total_pages]
      end
    end

  end
end
