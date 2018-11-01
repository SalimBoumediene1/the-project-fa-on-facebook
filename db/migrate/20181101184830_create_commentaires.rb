class CreateCommentaires < ActiveRecord::Migration[5.2]
  def change
    create_table :commentaires do |t|
      t.text :content
      t.references :user, foreign_key: true, index: true
      t.belongs_to :commenteable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
