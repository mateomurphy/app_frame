module AppFrame
  class FallbackResolver < ActionView::FileSystemResolver
    def build_path(name, prefix, partial, details)
      path = ""
#      path << "#{prefix}/" unless prefix.empty?
      path << (partial ? "_#{name}" : name)
      path
    end    
  end
end