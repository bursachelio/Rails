# frozen_string_literal: true

module ApplicationHelper
  def author_name
    "Иван Бурсак"
  end

  def github_url
    "https://github.com/bursachelio"
  end

  def question_header(question)
    if question.new_record?
      "Create New #{question.test.title} Question"
    else
      "Edit #{question.test.title} Question"
    end
  end

  def current_year
    Time.now.year
  end

  def github_url(author, repo)
    "https://github.com/#{author}/#{repo}"
  end
end
