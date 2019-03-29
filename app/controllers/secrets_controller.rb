class SecretsController < ApplicationController
  def show
  end
  def destroy
    session.delete :name
  end
end
