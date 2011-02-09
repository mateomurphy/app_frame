module AppFrame
  module ViewMethods
    def self.included(klass)
      klass.extend(ClassMethods)
    end

    module ClassMethods

    end
  end
end