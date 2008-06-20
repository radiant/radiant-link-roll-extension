namespace :radiant do
  namespace :extensions do
    namespace :link_roll do
      
      desc "Runs the migration of the Link Roll extension"
      task :migrate => :environment do
        require 'radiant/extension_migrator'
        if ENV["VERSION"]
          LinkRollExtension.migrator.migrate(ENV["VERSION"].to_i)
        else
          LinkRollExtension.migrator.migrate
        end
      end
    
    end
  end
end