require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "debe crear un usuario" do
  	u = Usuario.new(username: "castillejo", email:"horacio@ache.com", password: "12345678")
  	assert u.save
  end
  test "debe crear un usuario sin email" do 
  	u = Usuario.new(username: "castillejo", password: "12345678")
  	assert u.save
  end
end
