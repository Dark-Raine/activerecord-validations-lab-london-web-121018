class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction)}
    validates :title_check, absence: { message: "DIS IS CLICKBAIT" }
    # validates :name, uniqueness: true

    def title_check
       

    if self.title
        
        if !self.title.include?  "Believe" || "Won't" || "Secret"
            true
        else
            false
        end
    else
        false
    end
    end
end
