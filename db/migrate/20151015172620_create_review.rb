class CreateReview < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.column :critique, :string

      t.timestamps
    end
  end
end
