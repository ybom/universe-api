require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe PlanetsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Planet. As you add validations to Planet, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PlanetsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all planets as @planets" do
      planet = Planet.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:planets)).to eq([planet])
    end
  end

  describe "GET show" do
    it "assigns the requested planet as @planet" do
      planet = Planet.create! valid_attributes
      get :show, {:id => planet.to_param}, valid_session
      expect(assigns(:planet)).to eq(planet)
    end
  end

  describe "GET new" do
    it "assigns a new planet as @planet" do
      get :new, {}, valid_session
      expect(assigns(:planet)).to be_a_new(Planet)
    end
  end

  describe "GET edit" do
    it "assigns the requested planet as @planet" do
      planet = Planet.create! valid_attributes
      get :edit, {:id => planet.to_param}, valid_session
      expect(assigns(:planet)).to eq(planet)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Planet" do
        expect {
          post :create, {:planet => valid_attributes}, valid_session
        }.to change(Planet, :count).by(1)
      end

      it "assigns a newly created planet as @planet" do
        post :create, {:planet => valid_attributes}, valid_session
        expect(assigns(:planet)).to be_a(Planet)
        expect(assigns(:planet)).to be_persisted
      end

      it "redirects to the created planet" do
        post :create, {:planet => valid_attributes}, valid_session
        expect(response).to redirect_to(Planet.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved planet as @planet" do
        post :create, {:planet => invalid_attributes}, valid_session
        expect(assigns(:planet)).to be_a_new(Planet)
      end

      it "re-renders the 'new' template" do
        post :create, {:planet => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested planet" do
        planet = Planet.create! valid_attributes
        put :update, {:id => planet.to_param, :planet => new_attributes}, valid_session
        planet.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested planet as @planet" do
        planet = Planet.create! valid_attributes
        put :update, {:id => planet.to_param, :planet => valid_attributes}, valid_session
        expect(assigns(:planet)).to eq(planet)
      end

      it "redirects to the planet" do
        planet = Planet.create! valid_attributes
        put :update, {:id => planet.to_param, :planet => valid_attributes}, valid_session
        expect(response).to redirect_to(planet)
      end
    end

    describe "with invalid params" do
      it "assigns the planet as @planet" do
        planet = Planet.create! valid_attributes
        put :update, {:id => planet.to_param, :planet => invalid_attributes}, valid_session
        expect(assigns(:planet)).to eq(planet)
      end

      it "re-renders the 'edit' template" do
        planet = Planet.create! valid_attributes
        put :update, {:id => planet.to_param, :planet => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested planet" do
      planet = Planet.create! valid_attributes
      expect {
        delete :destroy, {:id => planet.to_param}, valid_session
      }.to change(Planet, :count).by(-1)
    end

    it "redirects to the planets list" do
      planet = Planet.create! valid_attributes
      delete :destroy, {:id => planet.to_param}, valid_session
      expect(response).to redirect_to(planets_url)
    end
  end

end
