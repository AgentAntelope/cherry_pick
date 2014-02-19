module CherryPick

  def cherry_pick(*method_symbols, klass)
    klass = klass.dup

    klass.instance_methods.each do |method|
      unless method_symbols.include?(method)
        klass.send(:remove_method, method)
      end
    end

    include klass
  end

  def class_cherry_pick(*method_symbols, klass)
    method_symbols.each do |method_symbol|
      meta_class.send(:define_method, method_symbol) { klass.method(method_symbol).call }
    end
  end

  private

  def meta_class
    class << self; self; end
  end
end
