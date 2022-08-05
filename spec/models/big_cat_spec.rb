require 'rails_helper'

RSpec.describe BigCat, type: :model do
  it "should validate name" do
    cat = BigCat.create(age: 4, enjoys: 'Long walks in the jungle.', funfact:'Does a really good Mufasa impression.', image: 'https://images.unsplash.com/photo-1614027164847-1b28cfe1df60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2770&q=80')

    expect(cat.errors[:name]).to_not be_empty
  end

    it "should validate age" do
      cat = BigCat.create(name: 'Fluffy', enjoys: 'Long walks in the jungle.', funfact:'Does a really good Mufasa impression.', image: 'https://images.unsplash.com/photo-1614027164847-1b28cfe1df60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2770&q=80')

      expect(cat.errors[:age]).to_not be_empty
  end

  it "should validate enjoys" do
    cat = BigCat.create(name: 'Fluffy', age: 4, funfact:'Does a really good Mufasa impression.', image: 'https://images.unsplash.com/photo-1614027164847-1b28cfe1df60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2770&q=80')

    expect(cat.errors[:enjoys]).to_not be_empty
  end

  it "should validate funfact" do
    cat = BigCat.create(name: 'Fluffy', age: 4, enjoys: 'Long walks in the jungle.', image: 'https://images.unsplash.com/photo-1614027164847-1b28cfe1df60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2770&q=80')

    expect(cat.errors[:funfact]).to_not be_empty
  end

  it "should validate image" do
    cat = BigCat.create(name: 'Fluffy', age: 4, enjoys: 'Long walks in the jungle.', funfact:'Does a really good Mufasa impression.')

    expect(cat.errors[:image]).to_not be_empty
  end
end