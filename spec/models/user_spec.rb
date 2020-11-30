require 'rails_helper'

RSpec.describe User, type: :model do
 describe "ユーザー新規登録" do

    it "first_nameが空では登録できない"do
      user=FactoryBot.build(:user)
      user.first_name=""
      user.valid?
      expect(user.errors.full_messages).to include "苗字を入力してください", "苗字は不正な値です"
    end
  
    it "last_nameが空では登録できない"do
      user=FactoryBot.build(:user)
      user.last_name=""
      user.valid?
      expect(user.errors.full_messages).to include "名前を入力してください", "名前は不正な値です"
    end
  
    it "last_name_kanaが空では登録できない"do
      user=FactoryBot.build(:user)
      user.last_name_kana=""
      user.valid?
      expect(user.errors.full_messages).to include "カタカナで名前を入力してください", "カタカナで名前は不正な値です"
    end
    
    it "firs_name_kanaが空では登録できない"do
    user=FactoryBot.build(:user)
    user.first_name_kana=""
    user.valid?
    expect(user.errors.full_messages).to include "カタカナで苗字を入力してください", "カタカナで苗字は不正な値です"
  end
  
  it "emailが空では登録できない"do
    user=FactoryBot.build(:user)
    user.email=""
    user.valid?
    
    expect(user.errors.full_messages).to include "Eメールを入力してください"
    end
  it "passwordが空では登録できない"do
    user=FactoryBot.build(:user)
    user.password=""
    user.valid?
    expect(user.errors.full_messages).to include "パスワードを入力してください", "パスワード（確認用）とパスワードの入力が一致しません"
  end
   end
  end