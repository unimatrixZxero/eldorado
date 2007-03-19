# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 27) do

  create_table "events", :force => true do |t|
    t.column "title",       :string
    t.column "description", :text
    t.column "date",        :datetime
    t.column "private",     :boolean,  :default => false
    t.column "reminder",    :boolean
    t.column "user_id",     :integer
    t.column "created_at",  :datetime
    t.column "updated_at",  :datetime
  end

  create_table "headers", :force => true do |t|
    t.column "parent_id",    :integer
    t.column "content_type", :string
    t.column "filename",     :string
    t.column "thumbnail",    :string
    t.column "size",         :integer
    t.column "width",        :integer
    t.column "height",       :integer
    t.column "description",  :text
    t.column "user_id",      :integer
    t.column "created_at",   :datetime
    t.column "updated_at",   :datetime
  end

  create_table "newbies", :force => true do |t|
    t.column "term", :string
  end

  create_table "posts", :force => true do |t|
    t.column "user_id",    :integer
    t.column "topic_id",   :integer
    t.column "body",       :text
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
    t.column "updated_by", :integer
  end

  create_table "ranks", :force => true do |t|
    t.column "title",     :string
    t.column "min_posts", :integer
  end

  create_table "sessions", :force => true do |t|
    t.column "session_id", :string
    t.column "data",       :text
    t.column "updated_at", :datetime
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "topics", :force => true do |t|
    t.column "user_id",      :integer
    t.column "title",        :string
    t.column "created_at",   :datetime
    t.column "updated_at",   :datetime
    t.column "views",        :integer,  :default => 0
    t.column "posts_count",  :integer,  :default => 0
    t.column "last_post_id", :integer
    t.column "last_post_at", :datetime
    t.column "last_post_by", :integer
    t.column "private",      :boolean,  :default => false
    t.column "closed",       :boolean,  :default => false
  end

  create_table "uploads", :force => true do |t|
    t.column "parent_id",    :integer
    t.column "content_type", :string
    t.column "filename",     :string
    t.column "thumbnail",    :string
    t.column "size",         :integer
    t.column "width",        :integer
    t.column "height",       :integer
    t.column "user_id",      :integer
    t.column "created_at",   :datetime
    t.column "updated_at",   :datetime
  end

  create_table "users", :force => true do |t|
    t.column "login",              :string
    t.column "email",              :string
    t.column "password_hash",      :string
    t.column "created_at",         :datetime
    t.column "last_login_at",      :datetime
    t.column "admin",              :boolean
    t.column "posts_count",        :integer,  :default => 0
    t.column "signature",          :string
    t.column "avatar",             :string
    t.column "bio",                :text
    t.column "topics_count",       :integer,  :default => 0
    t.column "updated_at",         :datetime
    t.column "profile_updated_at", :datetime
    t.column "online_at",          :datetime
    t.column "headers_count",      :integer,  :default => 0
    t.column "events_count",       :integer,  :default => 0
    t.column "uploads_count",      :integer,  :default => 0
  end

end
