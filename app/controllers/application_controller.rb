class ApplicationController < ActionController::Base
  before_action :azertyuiop
  def azertyuiop
    @classements=Classement.derniersclassement
  end

end
