module AppFrame::LayoutHelper
  def sidenav
    @sidenav ||= render 'sidenav'
  end
  
  def sidenav?
    sidenav.present?
  end
  
  def sidebar
    @sidebar ||= render 'sidebar'
  end
  
  def sidebar?
    sidebar.present?
  end
  
  def content_cols
    @content_cols = 12
    #@content_cols -= 2 if sidenav?
    @content_cols -= 2 if sidebar?  
    @content_cols
  end
  
  def body_class
    "with-sidenav" if sidenav?
  end
  
end