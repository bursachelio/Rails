# frozen_string_literal: true

module ApplicationHelper
  AUTHOR_NAME = "Иван Бурсак".freeze

  def author_name
    AUTHOR_NAME
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
    Time.current.year
  end

  def github_url(author, repo)
    link_to "GitHub репозиторий", "https://github.com/#{author}/#{repo}", target: "_blank"
  end
end
