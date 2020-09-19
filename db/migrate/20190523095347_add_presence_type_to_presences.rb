class AddPresenceTypeToPresences < ActiveRecord::Migration[5.2]
  def up
     execute <<-DDL
      CREATE TYPE type_of_presence AS ENUM ('venue', 'organizer', 'attendee');
     DDL
     add_column :presences, :presence_type, :type_of_presence
     add_index :presences, :presence_type
   end

   def down
     remove_column :presences, :presence_type
     execute <<-DDL
       DROP TYPE presence_type;
     DDL
   end
end
