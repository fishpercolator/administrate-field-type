require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Type < Base
      class Engine < ::Rails::Engine
      end      
      
      def to_s
        data
      end
      
      def choices
        c = []
        c << class_name if options[:include_parent]
        c + class_name.constantize.subclasses.map(&:to_s)
      end
      
      def class_name
        options[:class_name] || raise(ArgumentError, "Field '#{attribute}' requires a class_name")
      end
      
    end
  end
end
