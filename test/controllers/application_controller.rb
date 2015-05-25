get :home
  assert_response :success
  assert_select "title", "Raz"
end
test "should get help"
  
end