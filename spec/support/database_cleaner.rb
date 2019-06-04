RSpec.configure do |config|
  config.add_setting(:seed_tables)
  config.seed_tables = %w(seed_table_1 seed_table_2)

  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation, except: config.seed_tables)
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :truncation, {except: config.seed_tables}
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
