class AttrAccessorObject
  def self.my_attr_accessor(*names)
    # ...
    names.each do |ele|

      define_method("#{ele}=".to_sym) do |new_value|
        instance_variable_set("@#{ele}", new_value)
      end

      define_method("#{ele}".to_sym) do 
        instance_variable_get("@#{ele}")
      end

    end
    
  end

end
