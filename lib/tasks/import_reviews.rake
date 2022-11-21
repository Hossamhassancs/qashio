require "csv"
desc "import reviews records from csv file to database"
task :import_reviews => :environment do
  puts "start importing"

  file_path= "#{Rails.root}/public/reviews.csv"

    CSV.foreach((file_path), headers: true, col_sep: ",") do |row|
       Review.create(row.to_hash)
    end

   puts "importing successfully"
end
