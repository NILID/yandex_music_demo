require 'rails_helper'

describe SongsController do
  let!(:song) { create(:song) }

  describe 'unreg user activities should' do
    it 'index' do
      expect(get :index).to render_template(:index)
      expect(assigns(:songs)).not_to be_nil
    end

    it 'get new' do
      expect(get :new).to render_template(:new)
    end

    it 'create' do
      expect{ post :create, params: { song: attributes_for(:song) } }.to change(Song, :count).by(1)
      expect(response).to redirect_to(root_url)
    end
  end
end
