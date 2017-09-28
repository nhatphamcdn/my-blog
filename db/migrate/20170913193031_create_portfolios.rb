class CreatePortfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.string :use_skills
      t.text :summary
      t.string :image
      t.string :url

      t.timestamps
    end
  end
end
