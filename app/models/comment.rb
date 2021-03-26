class Comment < ApplicationRecord
    belongs_to :posts
    validates :body, presence: {message: "valid: không được trống"}
    
    after_initialize do |user|
        puts "You have initialized an object!"
      end
    before_validation do |user|
        puts "before_validation"
        remove_whitespaces
    end
    after_validation do
        puts "after_validation"
        set_update
    end
    before_save do
        puts "before_save"
    end
    after_save do
        puts "after_save"
    end

    def remove_whitespaces
        body.strip! if !body.nil?
        puts "remove body space"
    end

    def set_update
        updated_at = Time.new
        puts "update time"
    end

    # Destroy

    before_destroy Proc.new {
        puts "destroy"
        ",,"
    }
    around_destroy do
        puts "around_destroy"
    end
    after_destroy do
        puts "after_destroy"
    end
end