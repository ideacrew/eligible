# Define location of registration files for auto injection using dry-rails
# For further infomration see: https://dry-rb.org/gems/dry-rails

Dry::Rails.container do
  config.component_dirs.add "app/operations"

  config.component_dirs.add "lib" do |dir|
    dir.namespaces.add "rails_app", key: nil
  end

  # Feature names: application_contract safe_params controller_helpers
  config.features = %i[application_contract safe_params controller_helpers]
end
