module RsPaginator
  module ViewHelpers

    def paginate(objects, extra_params: {})
      RsPaginator::Paginator.new(objects, self, extra_params: extra_params).render
    end

    def page_info(objects)
      RsPaginator::PageInfo.new(objects, self).render
    end

  end
end
