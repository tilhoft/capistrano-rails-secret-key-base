namespace :secret do
  desc 'renew secret_keybase'
  task :update do
    on roles(:web) do
      within release_path do
        s_key = SecureRandom.hex(64)
        target = "#{Rails.root}/config/secrets.yml"
        sec = YAML.load_file(target)
        sec["production"]["secret_key_base"] = s_key
        content = sec.to_yaml
        File.open(target, "w+") do |f|
          f.write(content)
        end
      end
    end
  end
end