require 'spec_helper'
require 'keyboard'

describe Keyboard do
  context "Given a message with only a single word" do
    it "should write 'a'" do
      keyboard = Keyboard.new
      keyboard.write('a').should == '2'
    end
    
    it "should write 'text'" do
      keyboard = Keyboard.new
      keyboard.write('text').should == '833998'
    end
  end
end