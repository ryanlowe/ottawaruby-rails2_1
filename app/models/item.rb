class Item < ActiveRecord::Base
  CHEAP_THRESHOLD = 10
  EXPENSIVE_THRESHOLD = 100
  
  validates_presence_of :name
  validates_presence_of :media
  validates_presence_of :price
  
  named_scope :books, :conditions => ["media = ?", "book"]
  named_scope :screencasts, :conditions => ["media = ?", "screencast"]
  
  named_scope :cheap, :conditions => ["price < ?", CHEAP_THRESHOLD]
  named_scope :reasonably_priced, :conditions => ["price >= ? AND price < ?", CHEAP_THRESHOLD, EXPENSIVE_THRESHOLD]
  named_scope :expensive, :conditions => ["price >= ?", EXPENSIVE_THRESHOLD]
  
  has_many :edits
  
  def after_save
    for a in changes.keys
      next if ["updated_at"].include? a
      oldv, newv = changes[a]
      e = Edit.new
      e.item_id = self.id
      e.attribute = a
      e.old_value = oldv
      e.new_value = newv
      e.save! # raises on failure
    end
  end
  
end
