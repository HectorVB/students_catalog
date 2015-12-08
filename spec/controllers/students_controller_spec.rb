require 'rails_helper'

RSpec.describe StudentsController, type: :controller do

end
require "rails_helper"


describe StudentsController do 
describe "log" do 
	it "also" do
		teacher = FactoryGirl.create(:teacher)
		login_as(teacher, :scope => :teacher)
	end
end

end