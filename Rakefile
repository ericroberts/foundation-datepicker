require "bundler/gem_tasks"

desc "Remove the vendor directory"
task :clean do
  rm_rf 'vendor'
end

desc "Generate the JavaScript assets"
task :javascripts do
  target_dir = "vendor/assets/javascripts"
  FileUtils.mkdir_p target_dir
  Rake.rake_output_message 'Generating javascripts'
  FileUtils.cp_r Dir["foundation-datepicker/js/foundation-datepicker.js"], target_dir
end

desc "Generate the CSS assets"
task :stylesheets do
  target_dir = "vendor/assets/stylesheets"
  FileUtils.mkdir_p target_dir
  Rake.rake_output_message 'Generating stylesheets'
  FileUtils.cp_r Dir["foundation-datepicker/css/foundation-datepicker.scss"], target_dir
end

desc "Clean and then generate everything (default)"
task assets: [:clean, :javascripts, :stylesheets]

task build: :assets

task default: :assets
