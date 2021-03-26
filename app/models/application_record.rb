class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

class SaveThenPutsString 
  def self.after_save(model)
    puts "after save ....... then call back #{model}"
  end
end