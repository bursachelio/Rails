# frozen_string_literal: true

class Answer < ApplicationRecord
  belongs_to :question

  default_scope { order(title: :asc) }

end
