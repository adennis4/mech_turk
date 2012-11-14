class AddImageUrlToAdvertisements < ActiveRecord::Migration
  def change
    add_column :advertisements, :image_url, :string
  end
end
