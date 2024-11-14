defmodule VidstackIssue1191Web.ErrorJSONTest do
  use VidstackIssue1191Web.ConnCase, async: true

  test "renders 404" do
    assert VidstackIssue1191Web.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert VidstackIssue1191Web.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
