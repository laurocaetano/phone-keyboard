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
  
  context "Given a message with space between the words" do
    it "should write 'text msg'" do
      keyboard = Keyboard.new
      keyboard.write('text msg').should == '8339980677774'
    end
  end
end