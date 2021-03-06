module Leg
  module DiffTransformers
    class BaseTransformer
      def initialize(options = {})
        @options = options
      end

      def transform(diff)
        raise NotImplementedError
      end
    end
  end
end
