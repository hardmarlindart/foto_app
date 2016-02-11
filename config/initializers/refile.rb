require 'refile'

Refile.cache = Refile::Backend::FileSystem.new("img/uploads/cache")
Refile.store = Refile::Backend::FileSystem.new("img/uploads/store")