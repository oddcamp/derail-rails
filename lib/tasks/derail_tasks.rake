namespace :derail do
  desc "Destroy rails project"
  task :rails => [:environment] do
    puts "\nDo you really want to destroy this project? [Y/N]"

    if STDIN.gets.chomp == "Y"
      if defined?(Chewy)
        puts "Deleting elasticsearch indices..."
        Chewy::RakeHelper.all_indexes.each { |index| index.delete }
        puts "[Done]"
      end

      puts "Dropping databases..."
      begin
        Rake::Task['db:drop:all'].invoke
        puts "[Done]"
      rescue StandardError => e
        puts e.message
      end

      puts "Deleting project directory..."
      `rm -fr #{Rails.root.to_s}`
      puts "[Done]"
    end
  end
end
