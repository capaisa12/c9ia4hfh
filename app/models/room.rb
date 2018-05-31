# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  beds        :integer
#  guests      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_url   :string
#

class Room < ActiveRecord::Base
  # Validad que todos los campos sean obliatorios
  validates :title, :description, :beds, :guests, :image_url, presence: true
  # validad que el campo description no tenga mas de 400 caracteres
  validates :description, length: {maximum: 400}
  # El campor beds y guests
  validates :beds, :guests, numericality: {only_integer: true}
end
