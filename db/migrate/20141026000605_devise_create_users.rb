class DeviseCreateUsers < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t| 
      #me t.database_authenticatable :null => false
      #me t.recoverable 
      #me t.rememberable 
      #me t.trackable 
      #
     ## Database authenticatable
  t.string :email,              :null => false, :default => ""
  t.string :encrypted_password, :null => false, :default => ""

  ## Recoverable
  t.string   :reset_password_token
  t.datetime :reset_password_sent_at

  ## Rememberable
  t.datetime :remember_created_at

  ## Trackable
  t.integer  :sign_in_count, :default => 0
  t.datetime :current_sign_in_at
  t.datetime :last_sign_in_at
  t.string   :current_sign_in_ip
  t.string   :last_sign_in_ip
    #me create_table(:users) do |t|
      ## Database authenticatable
      #me t.string :email,              null: false, default: ""
      #me t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      #me t.string   :reset_password_token
      #me t.datetime :reset_password_sent_at

      ## Rememberable
      #me t.datetime :remember_created_at

      ## Trackable
      #me t.integer  :sign_in_count, default: 0, null: false
      #me t.datetime :current_sign_in_at
      #me t.datetime :last_sign_in_at
      #me t.string   :current_sign_in_ip
      #me t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.string :name
      
      t.timestamps
    end

    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
    #step 4 - added by me
    add_index :assets, :user_id
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
  def self.down 
    drop_table :users
  end
end
