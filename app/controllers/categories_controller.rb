# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    run Categories::Index
  end

  def show
    run Categories::Show
  end

  def edit
    run Categories::Edit
  end

  def create
    run Categories::Create
  end

  def destroy
    # need to do
  end
end
