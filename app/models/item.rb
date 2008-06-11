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
  
  
end
