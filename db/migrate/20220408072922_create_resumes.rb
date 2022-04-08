class CreateResumes < ActiveRecord::Migration[6.1]
  def change
    create_table :resumes do |t|
      t.string :title
      t.text :content
      t.string :status

      t.timestamps
      # 透過timestamps自動新增這兩個欄位created_at updated_at 時間搓計
      # 有隱藏的ID流水編號
    end
  end
end
