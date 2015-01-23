desc "Install Bourbon"
task :bourbon do
  sh "cd source/assets/stylesheets && bourbon install"
end

desc "Install Neat"
task :neat do
  sh "cd source/assets/stylesheets && neat install"
end

desc "Serve the site with Jekyll"
task :serve do
  sh "bundle exec jekyll serve -w"
end

desc "Deploy to gh-pages"
task :deploy do
  sh "bundle exec jekyll build && git subtree push --prefix build origin gh-pages"
end
