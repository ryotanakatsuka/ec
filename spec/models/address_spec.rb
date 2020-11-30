require 'rails_helper'
describe Address,type: :model do
  before do
    @address = FactoryBot.build(:address)
  end
  
  describe"住所登録" do
    context "登録できる時" do
      it "postal_code,prefecture_id,city,address,phone_numberが存在すれば登録できる"do
      expect(@address).to be_valid
      end
    end

    context"登録できない時"do
      it "postal_codeが空では登録できない" do
        @address.postal_code=""
        @address.valid?
        expect(@address.errors.full_messages).to include"郵便番号を入力してください", "郵便番号は不正な値です"
      end
      it "prefecture_idが空では登録できない" do
        @address.prefecture_id=""
        @address.valid?
        expect(@address.errors.full_messages).to include"Prefectureを入力してください"
      end
      it "cityが空では登録できない" do
        @address.city=""
        @address.valid?
        expect(@address.errors.full_messages).to include"市区町村を入力してください"
      end
      it "addressesが空では登録できない" do
        @address.addresses=""
        @address.valid?
        
        expect(@address.errors.full_messages).to include"番地を入力してください"
      end
      it "phone_numberが空では登録できない" do
        @address.phone_number=""
        @address.valid?
        expect(@address.errors.full_messages).to include"電話番号を入力してください", "電話番号は不正な値です"
      end
    end

  end
end