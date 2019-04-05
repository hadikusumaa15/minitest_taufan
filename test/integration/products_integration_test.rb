require "minitest_helper"

describe "Products integration" do
  it "shows product's name" do
    product = Product.create!(name: "Waifu")
    visit product_path(product)
    page.text.must_include "Waifu"
    p "waifu berhasil masuk"
  end
end