# frozen_string_literal: true

class CostsController < ApplicationController
  def index
    run Costs::Index
  end

  def show
    run Costs::Show
  end

  def edit
    run Costs::Edit
  end

  def create
    run Costs::Create
  end

  def destroy
    # need to do
  end
end
