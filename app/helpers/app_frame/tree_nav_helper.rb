module AppFrame::TreeNavHelper
  def tree_nav(node)
    result = []
    result << tree_nav_link("&uarr;", left_admin_section_page_path(parent, node),  node.left_sibling)
    result << tree_nav_link("&darr;", right_admin_section_page_path(parent, node), node.right_sibling)
    result << tree_nav_link("&rarr;", down_admin_section_page_path(parent, node),  node.left_sibling)
    result << tree_nav_link("&larr;", up_admin_section_page_path(parent, node),    node.parent)
    result << tree_nav_link("Edit",   edit_admin_section_page_path(parent, node))
    content_tag :span, result.join('').html_safe, :class => 'tree_nav'
  end
  
  def tree_nav_link(text, link, condition = true)
    condition ? link_to(text.html_safe, link) : content_tag(:span, text.html_safe)
  end
  
end