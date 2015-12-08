require 'rails_helper'

RSpec.describe Students, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
require 'rails_helper'

describe Student do
	describe "#full_name" do
		it "returns complete name" do
			student=Student.create!( 
				first_name: "Hector",
				last_name: "Vazquez",
				birthdate: "05/07/1990",
		    	control_number:"10460319",
		    	semester: "11" )

		    expect(student.name).to eq "Hector Vazquez"
		end
	end
end