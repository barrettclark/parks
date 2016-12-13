namespace :db do
  namespace :seed do
    task :load_tenk => :environment do
      filename = Rails.root.join('db', 'data', 'tenk.data')
      File.readlines(filename).each do |line|
        fields = line.split
        Tenk.where(
          :unique1     => fields[0],
          :unique2     => fields[1],
          :two         => fields[2],
          :four        => fields[3],
          :ten         => fields[4],
          :twenty      => fields[5],
          :hundred     => fields[6],
          :thousand    => fields[7],
          :twothousand => fields[8],
          :fivethous   => fields[9],
          :tenthous    => fields[10],
          :odd         => fields[11],
          :even        => fields[12],
          :stringu1    => fields[13],
          :stringu2    => fields[14],
          :string4     => fields[15]
        ).first_or_create
      end
    end
  end
end
