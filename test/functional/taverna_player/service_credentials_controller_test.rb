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

require 'test_helper'

module TavernaPlayer
  class ServiceCredentialsControllerTest < ActionController::TestCase
    setup do
      @sc1 = taverna_player_service_credentials(:one)
      @sc2 = taverna_player_service_credentials(:two)
      @routes = TavernaPlayer::Engine.routes
    end

    test "should route to service credentials" do
      assert_routing "#{TavernaPlayer.admin_scope}/service_credentials",
        { :controller => "taverna_player/service_credentials",
          :action => "index" }, {}, {}, "Did not route correctly"
    end

    test "should route to a service credential" do
      assert_routing "#{TavernaPlayer.admin_scope}/service_credentials/1",
        { :controller => "taverna_player/service_credentials",
          :action => "show", :id => "1" }, {}, {}, "Did not route correctly"
    end

    test "should get index and be overridden" do
      get :index
      assert_response :success
      assert_not_nil assigns(:service_credentials)
      assert_not_nil assigns(:override)
      assert_template({:layout => 'layouts/application'})
    end

    test "should get new" do
      get :new
      assert_response :success
      assert_not_nil assigns(:service_credential)
      assert_template({:layout => 'layouts/application'})
    end

    test "should create service_credential" do
      assert_difference('ServiceCredential.count') do
        post :create, :service_credential => {
          :description => @sc1.description,
          :login => @sc1.login,
          :name => @sc1.name,
          :password => @sc1.password,
          :password_confirmation => @sc1.password,
          :uri => @sc1.uri
        }
      end

      assert_redirected_to service_credential_path(assigns(:service_credential))
    end

    test "should show service_credential and not be overridden" do
      get :show, :id => @sc1
      assert_response :success
      refute assigns(:override)
      assert_template({:layout => 'layouts/application'})
    end

    test "should get edit" do
      get :edit, :id => @sc1
      assert_response :success
    end

    test "should update service_credential" do
      put :update, :id => @sc1, :service_credential => {
        :description => @sc1.description,
        :login => @sc1.login,
        :name => @sc1.name,
        :password => @sc1.password,
        :password_confirmation => @sc1.password,
        :uri => @sc1.uri
      }

      assert_redirected_to service_credential_path(assigns(:service_credential))
    end

    test "should destroy service_credential" do
      assert_difference('ServiceCredential.count', -1) do
        delete :destroy, :id => @sc1
      end

      assert_response :redirect, "Response was not a redirect"
      assert_redirected_to service_credentials_path
    end
  end
end
