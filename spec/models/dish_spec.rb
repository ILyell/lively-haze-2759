require 'rails_helper'

RSpec.describe Dish, type: :model do

  describe "validations" do
      it {should validate_presence_of :name}
      it {should validate_presence_of :description}
  end

  describe "relationships" do
      it {should belong_to :chef}
      it {should have_many(:dish_ingedients)}
      it {should have_many(:ingedients).through(:dish_ingedients)}
  end

end