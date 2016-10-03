# 8. Create a Ruby class called Article inside a module called Blog that has two attributes: title and body.
# Write another class called Snippet that inherits from the Article class.
# The Snippet method should return the same `title` but if you call `body` on a
# snippet object it should return the body truncated to a 100 characters with three dots at the end.
# This means if you create a snippet object and give it a body that has 200 characters,
# if you call the `body` method it should return the first 100 characters of that body and
# three dots at the end.
# If the body is 100 characters or less, it should not put three dots at the end.
# Include the module you built in question 7 in the Article class and use it when returning the title.
require "./titleize.rb"

module Blog
  attr_accessor :article

  def initialize(article)
   @article = []
 end

  class Article
    include HelperMethods
    include Blog

    attr_accessor :title
    attr_accessor :body

    def initialize(title,body)
      @title = title.titleize
      @body = body
    end

  end

  class Snippet < Article

    def initialize(title,body)
      super(title)
      super(body)
    end

    def body
      if super(body).length > 100
      @body = super(body).slice(0,100) + "..."
    else
      @body = super(body).slice(0,100)
    end
    end

  end

end

blog1 = Blog.new(article1)
article1 = Article.new("a tale of two cities","It was the best of times, it was
 the worst of times, it was the age of wisdom, it was the age of foolishness,
 it was the epoch of belief, it was the epoch of incredulity, it was the season
 of Light, it was the season of Darkness, it was the spring of hope, it was the
  winter of despair, we had everything before us, we had nothing before us, we
  were all going direct to Heaven, we were all going direct the other way--in short,
   the period was so far like the present period, that some of its noisiest authorities
   insisted on its being received, for good or for evil, in the superlative degree of comparison only.")
snippet1 = Snippet.new("a tale of two cities","It was the best of times, it was
 the worst of times, it was the age of wisdom, it was the age of foolishness,
 it was the epoch of belief, it was the epoch of incredulity, it was the season
 of Light, it was the season of Darkness, it was the spring of hope, it was the
  winter of despair, we had everything before us, we had nothing before us, we
  were all going direct to Heaven, we were all going direct the other way--in short,
  the period was so far like the present period, that some of its noisiest authorities
  insisted on its being received, for good or for evil, in the superlative degree of comparison only.")
p article1
p snippet1
p snippet1.body
