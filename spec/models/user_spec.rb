require 'rails_helper'

RSpec.describe User, type: :model do
  it "role type enum "do
    should define_enum_for(:role).
      with([:visitor, :vip, :admin])
  end

  it "generates a random role on initialize" do
    user = User.new
    expect(user.role).not_to be_nil
  end

end
