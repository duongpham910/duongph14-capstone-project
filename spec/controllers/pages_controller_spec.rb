# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe '#show' do
    context 'home page' do
      it 'return success' do
        get :show, params: { page: 'home' }

        expect(response).to have_http_status(200)
        expect(response).to render_template('pages/home')
      end
    end

    context 'not found page' do
      it 'return 404 html' do
        get :show, params: { page: 'wrong_url' }

        expect(response).to have_http_status(:not_found)
      end
    end
  end
end
