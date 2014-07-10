module RsPaginator
  module ViewHelpers

    def paginate(objects)
      RsPaginator::Paginator.new(objects, self).render
    end

    def page_info(objects)
      RsPaginator::PageInfo.new(objects, self).render
    end

  end
end
