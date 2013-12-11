class WarningTable < ActiveRecord::Base
  attr_accessible :system_table_name, :view_table_name
end
