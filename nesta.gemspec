# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nesta/version"

Gem::Specification.new do |s|
  s.name        = "nesta"
  s.version     = Nesta::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Graham Ashton"]
  s.email       = ["graham@effectif.com"]
  s.homepage    = "http://nestacms.com"
  s.summary     = %q{Ruby CMS, written in Sinatra}
  s.description = <<-EOF
Nesta is a lightweight Content Management System, written in Ruby using
the Sinatra web framework. Nesta has the simplicity of a static site
generator, but (being a fully fledged Rack application) allows you to
serve dynamic content on demand.

Content is stored on disk in plain text files (there is no database).
Edit your content in a text editor and keep it under version control
(most people use git, but any version control system will do fine).

Implementing your site's design is easy, but Nesta also has a small
selection of themes to choose from.
EOF

  s.rubyforge_project = "nesta"

  s.files         = %w[
.gitignore
.travis.yml
CHANGES
Gemfile
Gemfile.lock
LICENSE
README.md
Rakefile
bin/nesta
config.ru
config/deploy.rb.sample
lib/nesta.rb
lib/nesta/app.rb
lib/nesta/cache.rb
lib/nesta/commands.rb
lib/nesta/config.rb
lib/nesta/env.rb
lib/nesta/helpers.rb
lib/nesta/models.rb
lib/nesta/navigation.rb
lib/nesta/nesta.rb
lib/nesta/overrides.rb
lib/nesta/path.rb
lib/nesta/plugin.rb
lib/nesta/version.rb
nesta.gemspec
scripts/import-from-mephisto
spec/atom_spec.rb
spec/commands_spec.rb
spec/config_spec.rb
spec/fixtures/nesta-plugin-test/Gemfile
spec/fixtures/nesta-plugin-test/Rakefile
spec/fixtures/nesta-plugin-test/lib/nesta-plugin-test.rb
spec/fixtures/nesta-plugin-test/lib/nesta-plugin-test/init.rb
spec/fixtures/nesta-plugin-test/lib/nesta-plugin-test/version.rb
spec/fixtures/nesta-plugin-test/nesta-plugin-test.gemspec
spec/model_factory.rb
spec/models_spec.rb
spec/overrides_spec.rb
spec/page_spec.rb
spec/path_spec.rb
spec/plugin_spec.rb
spec/sitemap_spec.rb
spec/spec.opts
spec/spec_helper.rb
templates/Gemfile
templates/Rakefile
templates/config.ru
templates/config/config.yml
templates/config/deploy.rb
templates/index.haml
templates/themes/README.md
templates/themes/app.rb
views/analytics.haml
views/atom.haml
views/categories.haml
views/colors.sass
views/comments.haml
views/error.haml
views/feed.haml
views/footer.haml
views/header.haml
views/layout.haml
views/master.sass
views/mixins.sass
views/not_found.haml
views/page.haml
views/page_meta.haml
views/sidebar.haml
views/sitemap.haml
views/summaries.haml
]

  s.test_files    = s.files.select { |path| path =~ %r[^(?:test|spec|features)/] }
  s.executables   = s.files.select { |path| path =~ %r[^bin/] }
  s.require_paths = ["lib"]

  s.add_dependency('haml', '~> 3.1')
  s.add_dependency('sass', '~> 3.1')
  s.add_dependency('kramdown', '~> 0.13')
  s.add_dependency('sinatra', '~> 1.3')
  s.add_dependency('rack', '~> 1.1')

  # This is required if you actually use it, but you don't need to
  s.add_development_dependency('RedCloth', '~> 4.2')
  
  # Useful in development
  s.add_development_dependency('shotgun', '>= 0.8')

  # Test libraries
  s.add_development_dependency('hpricot', '0.8.4')
  s.add_development_dependency('rack-test', '0.6.1')
  s.add_development_dependency('rspec', '1.3.0')
  s.add_development_dependency('rspec_hpricot_matchers', '1.0')
  s.add_development_dependency('test-unit', '1.2.3')
end
