require 'redmine'

require_dependency 'issues_helper_patch_for_watchers'

Redmine::Plugin.register :redmine_watcher_extension do
  name 'Redmine Watcher Extension'
  author 'skworks33'
  description 'Redmine Watcher Extension'
  version '0.0.1'
  url 'https://github.com/skworks33/redmine_watcher_extension'
  author_url 'https://github.com/skworks33'
end
