require 'spec_helper'

describe "cars/edit" do
  before(:each) do
    @car = assign(:car, stub_model(Car,
      :Brand => "MyString",
      :Model => "MyString",
      :Engine => "MyString",
      :Price => 1,
      :Notes => "MyText",
      :Image => "MyString",
      :Owner => "MyString"
    ))
  end

  it "renders the edit car form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cars_path(@car), :method => "post" do
      assert_select "input#car_Brand", :name => "car[Brand]"
      assert_select "input#car_Model", :name => "car[Model]"
      assert_select "input#car_Engine", :name => "car[Engine]"
      assert_select "input#car_Price", :name => "car[Price]"
      assert_select "textarea#car_Notes", :name => "car[Notes]"
      assert_select "input#car_Image", :name => "car[Image]"
      assert_select "input#car_Owner", :name => "car[Owner]"
    end
  end
end
