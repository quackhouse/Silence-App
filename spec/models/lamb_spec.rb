require 'spec_helper'

describe Lamb do

  context "when first initialized" do

    it "has a boolean is_silent" do

      lamb = Lamb.new
      expect( lamb.is_silent ).to be

    end

  end

end
