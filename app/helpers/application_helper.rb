# frozen_string_literal: true

module ApplicationHelper
  def question_header(question, test)
    if question.new_record?
      "Create New #{test.title} Question"
    else
      "Edit #{test.title} Question"
    end
  end

  def current_year
    Time.now.year
  end

  def github_url(author, repo)
    "https://github.com/#{author}/#{repo}"
  end
end
