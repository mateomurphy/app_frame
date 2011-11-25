module AppFrame
  module ViewMethods
    def self.included(klass)
      klass.extend(ClassMethods)
    end

    def editable_attributes_for(klass)
      klass.column_names - ['id', 'created_at', 'updated_at', 'type']
    end

    def attributes_for(klass)
      klass.column_names
    end

    module ClassMethods

    end
  end
end