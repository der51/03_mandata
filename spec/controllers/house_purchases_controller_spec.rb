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

RSpec.describe HousePurchasesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # HousePurchase. As you add validations to HousePurchase, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HousePurchasesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all house_purchases as @house_purchases" do
      house_purchase = HousePurchase.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:house_purchases)).to eq([house_purchase])
    end
  end

  describe "GET #show" do
    it "assigns the requested house_purchase as @house_purchase" do
      house_purchase = HousePurchase.create! valid_attributes
      get :show, {:id => house_purchase.to_param}, valid_session
      expect(assigns(:house_purchase)).to eq(house_purchase)
    end
  end

  describe "GET #new" do
    it "assigns a new house_purchase as @house_purchase" do
      get :new, {}, valid_session
      expect(assigns(:house_purchase)).to be_a_new(HousePurchase)
    end
  end

  describe "GET #edit" do
    it "assigns the requested house_purchase as @house_purchase" do
      house_purchase = HousePurchase.create! valid_attributes
      get :edit, {:id => house_purchase.to_param}, valid_session
      expect(assigns(:house_purchase)).to eq(house_purchase)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new HousePurchase" do
        expect {
          post :create, {:house_purchase => valid_attributes}, valid_session
        }.to change(HousePurchase, :count).by(1)
      end

      it "assigns a newly created house_purchase as @house_purchase" do
        post :create, {:house_purchase => valid_attributes}, valid_session
        expect(assigns(:house_purchase)).to be_a(HousePurchase)
        expect(assigns(:house_purchase)).to be_persisted
      end

      it "redirects to the created house_purchase" do
        post :create, {:house_purchase => valid_attributes}, valid_session
        expect(response).to redirect_to(HousePurchase.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved house_purchase as @house_purchase" do
        post :create, {:house_purchase => invalid_attributes}, valid_session
        expect(assigns(:house_purchase)).to be_a_new(HousePurchase)
      end

      it "re-renders the 'new' template" do
        post :create, {:house_purchase => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested house_purchase" do
        house_purchase = HousePurchase.create! valid_attributes
        put :update, {:id => house_purchase.to_param, :house_purchase => new_attributes}, valid_session
        house_purchase.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested house_purchase as @house_purchase" do
        house_purchase = HousePurchase.create! valid_attributes
        put :update, {:id => house_purchase.to_param, :house_purchase => valid_attributes}, valid_session
        expect(assigns(:house_purchase)).to eq(house_purchase)
      end

      it "redirects to the house_purchase" do
        house_purchase = HousePurchase.create! valid_attributes
        put :update, {:id => house_purchase.to_param, :house_purchase => valid_attributes}, valid_session
        expect(response).to redirect_to(house_purchase)
      end
    end

    context "with invalid params" do
      it "assigns the house_purchase as @house_purchase" do
        house_purchase = HousePurchase.create! valid_attributes
        put :update, {:id => house_purchase.to_param, :house_purchase => invalid_attributes}, valid_session
        expect(assigns(:house_purchase)).to eq(house_purchase)
      end

      it "re-renders the 'edit' template" do
        house_purchase = HousePurchase.create! valid_attributes
        put :update, {:id => house_purchase.to_param, :house_purchase => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested house_purchase" do
      house_purchase = HousePurchase.create! valid_attributes
      expect {
        delete :destroy, {:id => house_purchase.to_param}, valid_session
      }.to change(HousePurchase, :count).by(-1)
    end

    it "redirects to the house_purchases list" do
      house_purchase = HousePurchase.create! valid_attributes
      delete :destroy, {:id => house_purchase.to_param}, valid_session
      expect(response).to redirect_to(house_purchases_url)
    end
  end

end