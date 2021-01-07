class NotesController < ApplicationController
  include ActiveModel::Model

  validates :title, presence: true
  validates :body, presence: true

  # POST /notes
  def create; end
end
