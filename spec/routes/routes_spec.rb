# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Routes', type: :routing do
  describe 'Routes for Home' do
    it 'routes /index to the home controller' do
      expect(get('/')).to route_to('home#index')
    end
  end
end
