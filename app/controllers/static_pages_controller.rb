class StaticPagesController < ApplicationController
  #before_action  :authenticate_user!

  def select
  end

  def random
    rand(55..995).step(5)
  end
end
