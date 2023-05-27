if Rails.env.development? || Rails.env.test?
    Spring.after_fork do
      ActiveRecord::Base.connection_pool.disconnect!
      ActiveRecord::Base.establish_connection
      ActiveRecord::Migration.check_pending!
      ActiveRecord::Migrator.migrate(Rails.root.join('db/migrate'))
    end
  end
  