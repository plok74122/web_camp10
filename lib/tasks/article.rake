namespace :article do
  desc "build fake article"
  task :fake => :environment do
    Article.delete_all
    20.times do
      a = Article.new(:title => Faker::Lorem.sentence, :content => Faker::Lorem.paragraphs)
      a.save
      puts "create article id = #{a.id}"
    end
  end
end