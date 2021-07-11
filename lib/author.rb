class Author
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all = self
    end

    def self.all
        @@all
    end

    def add_post(post)
        post.author = self
    end
    
    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
        # telling the post that it belongs to that author
        # for the test to pass, keep in mind that this method works hand-in-hand with #posts method
    end

    def self.post_count
        Post.all.count
        # this method works hand-in-hand with #add_post_by_title
    end
end