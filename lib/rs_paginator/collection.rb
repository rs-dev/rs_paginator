require 'delegate'

module RsPaginator
  class Collection < SimpleDelegator

    include Enumerable
    attr_reader :page, :per_page, :total
    
    def initialize(objects, page, per_page, total)
      @objects = objects
      @page = page.to_i
      @per_page = per_page.to_i
      @total = total.to_i
      super(objects)
    end

    def total_pages
      (@total.to_f / @per_page).ceil
    end

  end
end
