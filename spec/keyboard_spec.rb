require 'spec_helper'
require 'keyboard'

describe Keyboard do
  context "Given a message with only a single word" do
    it "should write a" do
      keyboard = Keyboard.new
      keyboard.write('2').should == 'a'
    end
  end
end