class Author < ActiveRecord::Base
  validates :name, format: { without: /[0-9]/, message: "does not allow numbers" }
  validates :email, uniqueness: true

  def create 
    @author = Author.new(author_name)

      if @author.valid?
        @author.save
        redirect_to_author_path(@author)
      else 
        render :new
      end 
    end 
end
