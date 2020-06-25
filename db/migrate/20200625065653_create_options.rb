class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.boolean :slider_shawod
      t.boolean :slider_dots

      t.timestamps
    end
  end
end
