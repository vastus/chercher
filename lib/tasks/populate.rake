namespace :db do
  desc "Erase and populate"
  task :populate => :environment do
    require "ffaker"
    require "populator"

    Post.delete_all
    Post.populate(100) do |post|
      post.title = Faker::Lorem.sentence.chop.titleize
      post.content = Faker::Lorem.paragraph(rand(30))
      post.created_at = 2.years.ago..Time.now
    end
  end
end
