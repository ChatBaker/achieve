require 'rails_helper'

describe Contact do

  # 名前、アドレス、内容がある時に有効か
  it "is vaild with name,email,content" do
    contact = Contact.new(name: "野田",email:"asc@asc",content:"テストですよ")
    expect(contact).to be_valid
  end

  # 名前だけ空欄の場合無効であること
  it "is valid without name" do
    contact = Contact.new(email:"asc@asc",content:"テストですよ")
    expect(contact).not_to be_valid
  end

  # emailが空欄の場合無効であること
  it "is valid without email"do
  contact = Contact.new(name: "野田",content:"テストですよ")
  expect(contact).not_to be_valid
  end

  # 内容がない場合無効であること
  it "is valid without content" do
    contact = Contact.new(name: "野田",email:"asc@asc")
    expect(contact).not_to be_valid
  end


  #名前 アドレス　内容　がない時にエラーは働くか
  it "is valid with name email content" do
    contact = Contact.new
    contact.valid?
    expect(contact.errors[:name]).to include("を入力してください")
    expect(contact.errors[:email]).to include("を入力してください")
    expect(contact.errors[:content]).to include("を入力してください")
  end
end
