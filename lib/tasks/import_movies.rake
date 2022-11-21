require "csv"
desc "import movies records from csv file to database"
task :import_movies => :environment do
  puts "start importing"

  file_path= "#{Rails.root}/public/movies.csv"

    CSV.foreach((file_path), headers: true, col_sep: ",") do |row|
       Movie.create(row.to_hash)
    end

   puts "importing successfully"
end
