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

    module ClassMethods

    end
  end
end