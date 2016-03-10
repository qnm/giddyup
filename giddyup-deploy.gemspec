require 'git-version-bump' rescue "Unable to load Git Version Bump"


Gem::Specification.new do |s|
	s.name = "giddyup-deploy"

	s.version = GVB.version rescue "0.0.0.1.ENOGVB"
	s.date    = GVB.date rescue Time.now

	s.platform = Gem::Platform::RUBY

	s.homepage = "http://theshed.hezmatt.org/giddyup"
	s.summary = "'git-deploy' command to interact with giddyup-managed deployments"
	s.authors = ["Matt Palmer"]

	s.extra_rdoc_files = ["README.md"]
	s.files = %w{
		bin/git-deploy
		lib/giddyup/git_deploy.rb
		lib/giddyup/command_wrapper.rb
	}
	s.executables = ["git-deploy"]

	s.add_runtime_dependency "git-version-bump"
	s.add_runtime_dependency "terminal-display-colors"

	s.add_development_dependency 'bundler'
	s.add_development_dependency 'github-release'
	s.add_development_dependency 'plymouth'
	s.add_development_dependency 'pry'
	s.add_development_dependency 'rake'
	s.add_development_dependency 'rdoc'
	s.add_development_dependency 'rspec'
	s.add_development_dependency 'spork'
end
