module DisplayFor
  class Action < Element
    def content(resource)
      super || link_to(label, resource)
    end
  end
end