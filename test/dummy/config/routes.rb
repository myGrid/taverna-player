#------------------------------------------------------------------------------
# Copyright (c) 2013, 2014 The University of Manchester, UK.
#
# BSD Licenced. See LICENCE.rdoc for details.
#
# Taverna Player was developed in the BioVeL project, funded by the European
# Commission 7th Framework Programme (FP7), through grant agreement
# number 283359.
#
# Author: Robert Haines
#------------------------------------------------------------------------------

Rails.application.routes.draw do
  root :to => "home#index"

  resources :workflows, :only => :index do
    resources :runs, :controller => "taverna_player/runs", :except => :edit
  end

  mount TavernaPlayer::Engine, :at => "/"
end
