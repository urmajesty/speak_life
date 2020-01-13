class CreateAffirmations < ActiveRecord::Migration[6.0]
  def change
    create_table :affirmations do |t|
      t.string :affirmation_keyword

      t.timestamps
    end
  end
end
