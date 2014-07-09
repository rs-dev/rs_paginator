module RsPaginator
  class Collection

    attr_reader :page
    
    def initialize(objects, page, per_page, total)
      @objects = objects
      @page = page
      @per_page = per_page
      @total = total
    end

    def total_pages
      (@total.to_f / @per_page).ceil
    end

    def method_missing(name, *args, &block)
      @objects.send(name, *args, &block)
    end

  end
end
