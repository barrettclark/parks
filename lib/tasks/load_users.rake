namespace :db do
  namespace :seed do
    task :load_users => :environment do
      url = "https://jsonplaceholder.typicode.com/users"
      response = Net::HTTP.get_response(URI.parse(url))
      json = JSON.parse(response.body)
      json.each do |person|
        full_name = person["name"].split
        full_name.delete("V")
        full_name.delete("Mrs.")
        User.where(:fname => full_name[0]).where(:lname => full_name[1]).first_or_create do |user|
          # http://stackoverflow.com/a/1698364/2100028
          user.color = "%06x" % (rand * 0xffffff)
          user.payload = person
        end
      end
    end
  end
end
