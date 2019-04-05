require "minitest_helper"

#runtest = ruby -Itest test/models/product_test.rb
#prepere database test = rake db:test:prepare
#fixture = https://gist.github.com/tenderlove/821558
#mock using mocha = https://github.com/freerange/mocha
 
# class ProductTest < Minitest::Unit::TestCase
#     def test_to_param
#         product = Product.create!(name: "MarryParrty-execusY")
#         assert_equal "#{product.id}-marryparrty-execusy", product.to_param
#         p "berhasil pakai minitest default haka"
#         p product.id
#     end
# end

describe Product do
    it "includes name in to_param" do
      product = Product.create!(name: "Hello World")
      product.to_param.must_equal "#{product.id}-hello-world"
      p "berhasil pakai minitest rspec style haka"
      p product.id
    end
end