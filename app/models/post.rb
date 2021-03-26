class CheckNullValidator < ActiveModel::Validator
    def validate(record)
        puts "check null: #{record.title} is: #{record.title == ""}" 
      if record.title == ""
        record.errors.add :title, :null, message: "title is null"
        # record.errors.add :base, "field is null"
      end
    end
end

class Post < ApplicationRecord
    validates :content, presence: {message: "ok"}, uniqueness: true, if: -> { content !=nil}

    validates :content, length: { minimum: 2, maximum: 15, message: 'Hơn 2 kí tự' }, allow_nil: true
    # validates_with CheckNullValidator
end


# allow_nil khong duoc