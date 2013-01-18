require 'spec_helper'

describe YagaHelper do
  include YagaHelper

  describe '#format_event' do
    [[{ category: 'user', action: 'registration' },
      "'user', 'registration'"]].each do |event, output|

      it 'formats events for GA' do
        format_event(event).should == output
      end
    end
  end

  describe '#format_custom_var' do
    [[{ index: 1, name: 'age', value: '25' },
      "1, 'age', '25'"]].each do |var, output|

      it 'formats curstom vars for GA' do
        format_custom_var(var).should == output
      end
    end
  end
end
