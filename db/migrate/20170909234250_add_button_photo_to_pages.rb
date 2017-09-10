class AddButtonPhotoToPages < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :pages, :button_photo
  end
end
