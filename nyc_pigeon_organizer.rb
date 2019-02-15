require "pry"

def nyc_pigeon_organizer(data)
org_data = {}
    data.each do |attributes, attribute|
      attribute.each do |option, names|
        names.each do |name|
          org_data[name] = {:color => [], :gender => [], :lives => []}
        end
      end
    end

    org_data.each do |name, attributes|
      attributes.each do |attribute, value|
        data.each do |orig_attributes, orig_attribute|
          orig_attribute.each do |orig_attribute, names|
            if names.include?(name)
              value << orig_attribute.to_s
            end
          end
        end
      end
    end
puts org_data
end


pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

nyc_pigeon_organizer(pigeon_data)
