require 'rails_helper'

RSpec.describe "archives/new", type: :view do
  before(:each) do
    assign(:archive, Archive.new(
      :realname => "MyString",
      :id_no => "MyString",
      :user_id => 1
    ))
  end

  it "renders new archive form" do
    render

    assert_select "form[action=?][method=?]", archives_path, "post" do

      assert_select "input#archive_realname[name=?]", "archive[realname]"

      assert_select "input#archive_id_no[name=?]", "archive[id_no]"

      assert_select "input#archive_user_id[name=?]", "archive[user_id]"
    end
  end
end
