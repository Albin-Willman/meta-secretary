# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'spork', cucumber_env: { 'RAILS_ENV' => 'test' }, rspec_env: { 'RAILS_ENV' => 'test' } do
  watch('config/application.rb')
  watch('config/environment.rb')
  watch('config/environments/test.rb')
  watch(%r{^config/initializers/.+\.rb$})
  watch('Gemfile')
  watch('Gemfile.lock')
  watch('spec/spec_helper.rb') { :rspec }
  watch('test/test_helper.rb') { :test_unit }
  watch(%r{features/support/}) { :cucumber }
end

# all_on_start => false (don't run all tests on guard start)
# all_on_pass => false  (don't run all tests after a test passes)
guard 'rspec', cmd: 'bundle exec rspec', cmd_additional_args: '--drb', all_on_start: false, all_after_pass: false do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }

  # Rails example
  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.*)(\.erb|\.haml)$})                 { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb", "spec/controllers/#{m[1]}]_spec.rb"] }
  watch('app/services')                               { 'spec/services' }
  watch(%r{^spec/support/(.+)\.rb$})                  { 'spec' }
  watch('config/routing.rb')                          { 'spec/routing' }
  watch('app/controllers/application_controller.rb')  { 'spec/controllers' }
  watch('app/helpers/application_helper.rb')          { ['spec/controllers', 'spec/helpers'] }
  watch('app/helpers')                                { 'spec/helpers' }
  watch(%r{^app/models/(.*)\.rb$})                    { 'spec/models' }

  # Capybara requests specs
  watch(%r{^app/views/(.+)/.*\.(erb|haml)$})          { |m| "spec/requests/#{m[1]}_spec.rb" }

  # Turnip requests and steps
  watch(%r{^spec/acceptance/(.+)\.feature$})
  watch(%r{^spec/acceptance/steps/(.+)_steps\.rb$})   { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'spec/acceptance' }
end
