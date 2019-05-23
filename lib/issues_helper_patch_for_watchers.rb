require_dependency 'issues_helper'

module IssuesHelperPatch

  # Returns an array of users that are proposed as watchers
  # on the new issue form
  def users_for_new_issue_watchers(issue)
    users = issue.watcher_users.select{|u| u.status == User::STATUS_ACTIVE}
    users = (users + issue.project.users.sort).uniq
    User.current.groups.find_each do |u|
      users = (users + Group.find(u.id).users).uniq
    end
    users
  end

end

IssuesHelper.prepend IssuesHelperPatch
