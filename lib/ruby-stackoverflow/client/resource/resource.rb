module RubyStackoverflow
  class Client
    class Resource
      def initialize(attributes_hash)
        attributes_hash.each do|k, v|
          self.class.send :attr_accessor, k
          instance_variable_set("@#{k}", v)
        end
      end

      class << self
        def parse_data(data)
          datas = data.map do|attr_hash|
            new(attr_hash)
          end
          datas
        end
      end
    end
  end
end
