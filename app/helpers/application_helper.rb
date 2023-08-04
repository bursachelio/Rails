# frozen_string_literal: true

module ApplicationHelper

  def author_name
    "Иван Бурсак"
  end

  def question_header(test, action)
    if action == :new
      "Create New #{test.title} Question"
    elsif action == :edit
      "Edit #{test.title} Question"
    end
  end

  def current_year
    Time.current.year
  end

  def github_url(author, repo)
    link_to "Проект на GitHub", "https://github.com/#{author}/#{repo}", target: "_blank"
  end
end
