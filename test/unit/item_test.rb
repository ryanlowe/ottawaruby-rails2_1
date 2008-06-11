require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  fixtures :items
  
  def test_fixtures
    assert items(:pickaxe3).valid?
    assert items(:everyday1).valid?
    assert items(:everyday2).valid?
    assert items(:git).valid?
  end
  
  def test_media_named_scopes
    assert [ items(:pickaxe3), items(:git) ], Item.books.find(:all)
    assert [ items(:everyday1), items(:everyday1) ], Item.screencasts.find(:all)
  end
  
  def test_price_named_scopes
    assert [ items(:everyday1), items(:everyday1), items(:git) ], Item.cheap.find(:all)
    assert [ items(:pickaxe3) ], Item.reasonably_priced.find(:all)
    assert [], Item.expensive.find(:all)
  end
  
  def test_combined_named_scopes
    assert [ items(:git) ], Item.cheap.books.find(:all)
    assert [ items(:everyday1), items(:everyday1) ], Item.reasonably_priced.books.find(:all)
    assert [], Item.expensive.books.find(:all)
  end
  
end
