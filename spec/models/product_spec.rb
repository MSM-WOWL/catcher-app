require 'rails_helper'

RSpec.describe Product, type: :model do
  before do
    @product = FactoryBot.build(:product)
  end

  describe '景品新規登録' do
    context '新規登録できる場合' do
      it 'product_nameとcategory_id、imageが存在すれば登録できる' do
        expect(@product).to be_valid
      end
    end

    context '新規登録できない場合' do
      it 'product_nameが存在しなければ登録できない' do
        @product.product_name = ''
        @product.valid?
        expect(@product.errors.full_messages).to include("Product name can't be blank")
      end
      it 'category_idが存在しなければ登録できない' do
        @product.category_id = ''
        @product.valid?
        expect(@product.errors.full_messages).to include("Category can't be blank")
      end
      it 'imageが存在しなければ登録できない' do
        @product.image = nil
        @product.valid?
        expect(@product.errors.full_messages).to include("Image can't be blank")
      end
    end
  end
end
