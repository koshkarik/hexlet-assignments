# frozen_string_literal: true

# BEGIN
require 'date'

module Model
  def initialize(attrs = {})
    @attributes = {}
    self.class.attrs_options.each do |key, options|
      if attrs.key?(key)
        @attributes[key] = self.class.convert_attribute(attrs[key], options[:type])
      end
    end
  end

  def attributes
    @attributes
  end

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def attrs_options
      @attrs_options || {}
    end

    def convert_attribute(value, type = nil)
      return value if type.nil?

      case type
      when :datetime
        DateTime.parse value
      when :string
        String value
      when :integer
        Integer value
      when :boolean
        value.to_s == 'true'
      end
    end

    def attribute(name, options = {})
      @attrs_options ||= {}
      @attributes ||= {}
      @attrs_options[name] = options

      define_method :"#{name}" do
        @attributes[name]
      end

      define_method :"#{name}=" do |value|
        @attributes[name] = self.class.convert_attribute(value, self.class.attrs_options[name][:type])
      end
    end
  end
end
# END
