class AddForeignKeyToPages < ActiveRecord::Migration[5.0]
  def change
    add_reference :pages, :jumbotron, foreign_key: true
  end
end
