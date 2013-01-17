module ToParam
  module Base
    extend ActiveSupport::Concern
    def to_param(args)
        case args
        when String
          define_method "to_param" do
            args.gsub(/:(\w+)/) {|method| send(method[1..-1]).to_s.parameterize }
          end

          if args.empty?
            raise ArgumentError.new("args can not be an empty string")
          end
        when Symbol
          define_method "to_param" do
            "#{id}-#{send(args).parameterize}"
          end
        else
          raise ArgumentError.new("args can only be string or symbol")
        end
    end
  end
end