require File.dirname(__FILE__) + '/test_helper.rb'

class TestSharedLifecycle < Test::Unit::TestCase

  shared "battery is ok" do
    test "battery should be ok" do
      assert_equal :ok, @battery
    end
  end

  context "starting a car" do
    before do
      @battery = :ok
      @engine = :off
    end

    uses_examples_from "battery is ok"

    test "engine should be off" do
      assert_equal :off, @engine
    end
  end

end
