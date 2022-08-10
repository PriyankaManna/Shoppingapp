# frozen_string_literal: true

class ChangePictureDatatype < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :picture, :attachment
  end
end
