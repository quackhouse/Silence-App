require 'spec_helper'

describe LambsController do

  describe 'GET #new' do

    it "renders the new view" do

      get :new
      response.should render_template :new

    end

  end

  describe 'POST #create' do

    it "creates a new lamb" do

      expect { post :create }.to change { Lamb.count }

    end

  end

  describe 'POST #update' do

    before(:each) do

      @lamb = Lamb.new
      @lamb.save
      @lamb_params = { :id => @lamb.id }
    end

    it "updates a lamb is_silent to false" do


      post :update, @lamb_params
      expect( assigns(:lamb).is_silent ).to eq(false)

    end

  end

end