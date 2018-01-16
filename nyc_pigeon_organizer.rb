def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, attribute_type|
    attribute_type.each do |type, names|
      names.each do |name|
        if !pigeon_list.has_key?(name)
          pigeon_list[name] = {}
        end
        if !pigeon_list[name].has_key?(attribute)
          pigeon_list[name][attribute] = []
        end
        if names.include?(name)
          pigeon_list[name][attribute].push(type.to_s)
        end
      end
    end
  end
  pigeon_list
end
