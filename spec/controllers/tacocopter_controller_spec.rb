require 'rails_helper'

RSpec.describe TacocopterController, type: :controller do

  describe '#index' do
    it 'renders the :index template' do
      get :index
      expect(response).to render_template(:index)
    end
    it 'retrieves all tacos from index' do
      tacos = Taco.all
      get :index
      expect(assigns(:tacos)).to eq(tacos)
    end
    it 'retrieves all salsas from index' do
      salsas = Salsa.all
      get :index
      expect(assigns(:salsas)).to eq(salsas)
    end
  end

  describe 'GET #search' do
    it 'renders the :search template' do
      get :search
      expect(response).to render_template(:search)
    end
  end
end