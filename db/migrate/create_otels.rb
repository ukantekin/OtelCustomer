class CreateOtels < ActiveRecord::Migration
  def change
    create_table :otels do |t|
      t.string :Oname
      t.string :Oemail
      t.string :Ophone
      t.string :Oadress

      t.timestamps
    end
  end
end
