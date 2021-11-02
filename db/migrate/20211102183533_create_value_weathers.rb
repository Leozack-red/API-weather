class CreateValueWeathers < ActiveRecord::Migration[6.1]
  def change
    create_table :value_weathers do |t|
      t.float :t_value
      t.integer :datatime

      t.timestamps
    end
  end
end
