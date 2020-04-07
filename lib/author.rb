class Author
  attr_accessor :name, :author
  
  def initialize(name) 
    @name = name
    @posts = []
  end
  
  def add_post(p)
    @posts << p
    post.author = self
  end
  
end