class Author
  attr_accessor :name, :author
  
  def initialize(name) 
    @name = name
    @posts = []
  end
  
  def add_post(something)
    @posts << something
    something.author = self
  end
  
end