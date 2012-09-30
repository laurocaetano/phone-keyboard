require 'spec_helper'
require 'keyboard'

describe Keyboard do
  let(:keyboard) { Keyboard.new }
  
  context "Given a message with only a single word" do
    it "should write 'a'" do
      keyboard.write('a').should == '2'
    end
    
    it "should write 'text'" do
      keyboard.write('text').should == '833998'
    end
  end
  
  context "Given a message with space between the words" do
    it "should write 'text msg'" do
      keyboard.write('text msg').should == '8339980677774'
    end
  end
  
  context "Given a word with double letters" do
    it "should write 'cell'" do
      keyboard.write('cell').should == '22233555_555'
    end
    
    it "should write 'sunny day'" do
      keyboard.write('sunny day').should == '77778866_66999032999'
    end
  end
end