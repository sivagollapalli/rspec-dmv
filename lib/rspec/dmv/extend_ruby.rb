class Object
  def call_methods(methods)
    methods.inject(self) do |obj, options|
      if options[:param]
        obj.send options[:method].to_sym, options[:param]
      else
        obj.send options[:method].to_sym
      end
    end
  end
end
