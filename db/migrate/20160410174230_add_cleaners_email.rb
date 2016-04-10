class AddCleanersEmail < ActiveRecord::Migration
  def change
    change_table :cleaners do |t|
      t.string :email
    end
  end
end
