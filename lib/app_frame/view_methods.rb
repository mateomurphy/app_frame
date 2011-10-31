module AppFrame
  module ViewMethods
    def self.included(klass)
      klass.extend(ClassMethods)
    end

    def resource_name
      resource_class.model_name.human
    end

    def editable_attributes_for(klass)
      klass.column_names - ['id', 'created_at', 'updated_at', 'type']
    end

    def attributes_for(klass)
      klass.column_names
    end

    def controller_namespaces
      result = controller.class.to_s.split('::')
      result.pop
      result.map(&:underscore)
    end

    module ClassMethods

    end
  end
end