class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body

      #Avisa cuando un 'blog' se crea o se edita
      t.timestamps
    end
  end
end
