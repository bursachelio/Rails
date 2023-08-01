# frozen_string_literal: true

module ApplicationHelper
  AUTHOR_NAME = "Иван Бурсак".freeze

  def github_url
    link_to "https://github.com/bursachelio"
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

end
