class AddDetailsTxtToGenre < ActiveRecord::Migration[7.1]
  def change
    add_column :genres, :details, :text, default: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptas numquam natus tempore fugit debitis exercitationem assumenda, sapiente adipisci et ipsum unde, voluptatibus ut esse ullam in, commodi at nobis officiis?'
  end
end
