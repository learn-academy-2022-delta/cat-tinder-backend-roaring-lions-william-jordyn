require 'rails_helper'

RSpec.describe "BigCats", type: :request do
  describe "GET /index" do
    it "gets a list of cats" do
      BigCat.create(
        name: 'Fluffy',
        age: 4,
        enjoys: 'Long walks in the jungle.',
        funfact:'Does a really good Mufasa impression.',
        image: 'https://images.unsplash.com/photo-1614027164847-1b28cfe1df60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2770&q=80'
        )

      get '/big_cats'
      cat = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(cat.length).to eq 1
    end
  end

  describe "POST /create" do
    it "creates a cat" do
      cat_params = {
        cat: {
          name: 'Fluffy',
          age: 4,
          enjoys: 'Long walks in the jungle.',
          funfact:'Does a really good Mufasa impression.',
          image: 'https://images.unsplash.com/photo-1614027164847-1b28cfe1df60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2770&q=80'
        }
      }

      post '/big_cats', params: cat_params
      expect(response).to have_http_status(200)
      cat = BigCat.first
      expect(cat.name).to eq 'Fluffy'
      expect(cat.age).to eq 4
      expect(cat.enjoys).to eq 'Long walks in the jungle.'
      expect(cat.funfact).to eq 'Does a really good Mufasa impression.'
      expect(cat.image).to eq 'https://images.unsplash.com/photo-1614027164847-1b28cfe1df60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2770&q=80'
    end
  end

  describe "PATCH /update" do
    it "updates a cat" do
      cat_params = {
        cat: {
          name: 'Fluffy',
          age: 4,
          enjoys: 'Long walks in the jungle.',
          funfact:'Does a really good Mufasa impression.',
          image: 'https://images.unsplash.com/photo-1614027164847-1b28cfe1df60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2770&q=80'
        }
      }

      post '/big_cats', params: cat_params
      cat = BigCat.first
      updated_cat_params = {
        cat: {
          name: 'Fluffy',
          age: 3,
          enjoys: 'Long walks in the jungle.',
          funfact:'Does a really good Mufasa impression.',
          image: 'https://images.unsplash.com/photo-1614027164847-1b28cfe1df60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2770&q=80'
        }
      }

      patch "/big_cats/#{cat.id}", params: updated_cat_params
      updated_cat = BigCat.find(cat.id)
      expect(response).to have_http_status(200)
      expect(updated_cat.age).to eq 3
    end
  end

  describe "DELETE /destroy" do
    it "deletes a cat" do
      cat_params = {
        cat: {
          name: 'Fluffy',
          age: 4,
          enjoys: 'Long walks in the jungle.',
          funfact:'Does a really good Mufasa impression.',
          image: 'https://images.unsplash.com/photo-1614027164847-1b28cfe1df60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2770&q=80'
        }
      }

      post "/big_cats", params: cat_params
      cat = BigCat.first
      delete "/big_cats/#{cat.id}"
      expect(response).to have_http_status(200)
      cats = BigCat.all
      expect(cats).to be_empty
    end
  end
end
