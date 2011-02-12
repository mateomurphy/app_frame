module TableFor
  class Action < Column
    def content(resource)
      super || link_to(label, resource)
    end
  end
end