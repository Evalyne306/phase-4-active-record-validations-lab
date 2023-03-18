class Post < ApplicationRecord
    validates :title, presence: true, exclusion: { in: ["True Facts"] }
    #or
    # validates :title, presence: true, exclusion: ["True Facts"]
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    #use this for inclusion or either fiction or non fiction
    # validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    # or
    validates :category, inclusion: ["Fiction", "Non-Fiction"]
   
end
