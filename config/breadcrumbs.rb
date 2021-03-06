crumb :root do
  link "トップページ", root_path
end

crumb :users do
  link "マイページ",user_path
  parent :root
end

crumb :news do
  link "新着速報",news_path
  parent :root
end

crumb :pages do
  link "米ナビ",page_path
  parent :root
end

crumb :pages do
  link "日本のお米事情",page_path("about2")
  parent :root
end

crumb :topics do
  link "各商品一覧",topics_path
  parent :root
end

crumb :items do
  link "商品詳細",item_path
  parent :topics
end




#crumb :topics do
 # link "各商品一覧(もち米)",sticky_rice_topics_path
  #parent :root
#end
#crumb :topics do
 # link "各商品一覧(酒粕)",sake_lees_topics_path
  #parent :root
#end


# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).