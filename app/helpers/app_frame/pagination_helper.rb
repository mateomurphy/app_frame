module AppFrame::PaginationHelper
  
  def page_range
    range_start = (page - 1) * per_page + 1
    range_end = (page)* per_page
    range_end = count if range_end > count
    
    "Displaying <strong>#{range_start} - #{range_end}</strong> of <strong>#{count}</strong> in total".html_safe
  end
end