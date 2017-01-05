require 'cucumber/rails'
require 'Capybara'
require 'Capybara/cucumber'
require 'rspec'
require 'capybara/poltergeist'

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation

Capybara.default_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|
    options = {
        :js_errors => true,
        :timeout => 120,
        :debug => false,
        :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
        :inspector => true,
    }
    Capybara::Poltergeist::Driver.new(app, options)
end

# Screenshots after steps - good for debugging
#  screenshots_folder = Rails.root.join('screenshots')
#  screenshots_folder.children.each(&:unlink) if screenshots_folder.exist?
#  
#  screenshot_count = 0
#  scenario_name = ''
#  
#  Before do |scenario|
#    scenario_name = scenario.name.parameterize
#  end
#  
#  AfterStep do
#    page.save_screenshot screenshots_folder.join("scr-#{screenshot_count}-#{scenario_name}.png")
#    screenshot_count += 1
#  end
