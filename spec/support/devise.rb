RSpec.configure do |config|
  # config.include Devise::Test::ControllerHelpers, type: :controller
  config.include DeviseRequestSpecHelpers, type: :request
  config.after :each do
    Warden.test_reset!
  end
end
