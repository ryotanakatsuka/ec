FactoryBot.define do
  factory :user do
    first_name            {"漢字"}
    last_name             {"漢字"}
    first_name_kana       {"カタカナ"}
    last_name_kana       {"カタカナ"}
    email                 {"test@example"}
    password              {"000000"}
    password_confirmation {password}
  end
end