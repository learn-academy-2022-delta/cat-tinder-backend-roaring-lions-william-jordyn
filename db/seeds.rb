bigCats = [
    {
      name: 'Fluffy',
      age: 4,
      enjoys: 'Long walks in the jungle.',
      funfact:'Does a really good Mufasa impression.',
      image: 'https://images.unsplash.com/photo-1614027164847-1b28cfe1df60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2770&q=80'
    },
    {
      name: 'Roary',
      age: 3,
      enjoys: 'Roaring out Hakuna Matata.',
      funfact:'He is tone deaf.',
      image: 'https://images.unsplash.com/photo-1589652045525-4496b6099023?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'
    },
    {
      name: 'Toast',
      age: 2,
      enjoys: 'Chasing prey.',
      funfact: 'Hunger games is her favorite movie.',
      image: 'https://images.unsplash.com/photo-1517036391698-b004444390fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'
    },
    {
        name: 'Cinnamon',
        age: 5,
        enjoys: 'Startling unsuspecting tourists.',
        funfact: 'She is a always watching you.',
        image: 'https://images.unsplash.com/photo-1492799808351-30d7d3955cac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1475&q=80'
      }
  ]
  
  bigCats.each do |each_big_cat|
    BigCat.create each_big_cat
    puts "creating cat #{each_big_cat}"
  end
