class Post < ActiveRecord::Base
  def self.search(query)
    find_by_sql(["SELECT * FROM posts WHERE MATCH(title, content) AGAINST(? IN BOOLEAN MODE)", query])
  end
end
