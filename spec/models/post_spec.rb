require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '投稿新規登録' do
    context '新規登録できる場合' do
      it '全ての項目が存在すれば登録できる' do
        expect(@post).to be_valid
      end
      it 'commentが存在しなくても登録できる' do
        @post.comment = ''
        expect(@post).to be_valid
      end
    end

    context '新規登録できない場合' do
      it 'store_nameが存在しなければ登録できない' do
        @post.store_name = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Store name can't be blank")
      end
      it 'priceが存在しなければ登録できない' do
        @post.price = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Price can't be blank")
      end
    end
  end
end
