# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
#....
Product.create!(title: 'Test title for product1',
        description:
            %{<p>
              Ruby is the fastest growing and most exciting dynamic language
              out there. If you need to get working programs delivered fast,
              you should add Ruby to your toolbox.
            </p>},
        image_url: 'ruby.jpg',
        price: 49.95)

Product.create!(title: 'Test title for product2',
                description:
                    %{<p>
              Ruby is the fastest growing and most exciting dynamic language
              out there. If you need to get working programs delivered fast,
              you should add Ruby to your toolbox.
            </p>},
                image_url: 'ruby.jpg',
                price: 50.95)

Product.create!(title: 'Test title for product3',
                description:
                    %{<p>
              Ruby is the fastest growing and most exciting dynamic language
              out there. If you need to get working programs delivered fast,
              you should add Ruby to your toolbox.
            </p>},
                image_url: 'ruby.jpg',
                price: 70.95)
#.....