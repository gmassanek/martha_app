require 'spec_helper'

describe "questionaires/edit.html.erb" do
  before(:each) do
    @questionaire = assign(:questionaire, stub_model(Questionaire,
      :name => "MyString",
      :email => "MyString",
      :q1 => "MyText",
      :q2 => "MyText",
      :q3 => "MyText",
      :q4 => "MyText",
      :q5 => "MyText",
      :q6 => "MyText",
      :q7 => "MyText",
      :q8 => "MyText",
      :q9 => "MyText"
    ))
  end

  it "renders the edit questionaire form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => questionaires_path(@questionaire), :method => "post" do
      assert_select "input#questionaire_name", :name => "questionaire[name]"
      assert_select "input#questionaire_email", :name => "questionaire[email]"
      assert_select "textarea#questionaire_q1", :name => "questionaire[q1]"
      assert_select "textarea#questionaire_q2", :name => "questionaire[q2]"
      assert_select "textarea#questionaire_q3", :name => "questionaire[q3]"
      assert_select "textarea#questionaire_q4", :name => "questionaire[q4]"
      assert_select "textarea#questionaire_q5", :name => "questionaire[q5]"
      assert_select "textarea#questionaire_q6", :name => "questionaire[q6]"
      assert_select "textarea#questionaire_q7", :name => "questionaire[q7]"
      assert_select "textarea#questionaire_q8", :name => "questionaire[q8]"
      assert_select "textarea#questionaire_q9", :name => "questionaire[q9]"
    end
  end
end
