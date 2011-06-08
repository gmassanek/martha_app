require 'spec_helper'

describe "questionaires/index.html.erb" do
  before(:each) do
    assign(:questionaires, [
      stub_model(Questionaire,
        :name => "Name",
        :email => "Email",
        :q1 => "MyText",
        :q2 => "MyText",
        :q3 => "MyText",
        :q4 => "MyText",
        :q5 => "MyText",
        :q6 => "MyText",
        :q7 => "MyText",
        :q8 => "MyText",
        :q9 => "MyText"
      ),
      stub_model(Questionaire,
        :name => "Name",
        :email => "Email",
        :q1 => "MyText",
        :q2 => "MyText",
        :q3 => "MyText",
        :q4 => "MyText",
        :q5 => "MyText",
        :q6 => "MyText",
        :q7 => "MyText",
        :q8 => "MyText",
        :q9 => "MyText"
      )
    ])
  end

  it "renders a list of questionaires" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
