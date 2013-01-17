class User1 < ActiveRecord::Base
  self.table_name = "users"
  attr_accessible :age, :is_fast, :name
  to_param ":id-:name"
end

class User2 < ActiveRecord::Base
  self.table_name = "users"
  attr_accessible :age, :is_fast, :name
  to_param "static"
end

class User3 < ActiveRecord::Base
  self.table_name = "users"
  attr_accessible :age, :is_fast, :name
  to_param :name
end

class User4 < ActiveRecord::Base
  self.table_name = "users"
  attr_accessible :age, :is_fast, :name
  to_param :invalid
end

class User5 < ActiveRecord::Base
  self.table_name = "users"
  attr_accessible :age, :is_fast, :name
  to_param ":id-:invalid"
end