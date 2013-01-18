module ToParam
  module Base
    extend ActiveSupport::Concern
    #
    # A one-liner solution for ActiveRecord::Base#to_param
    #
    # @args 
    #   String A non empty format string 
    #   Symbol An existing attribute name
    # @example
    #   to_param :name
    #   to_param ":id-:awesome-name"
    #   to_param "static"
    #
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