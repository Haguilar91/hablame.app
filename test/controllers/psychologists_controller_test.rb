require 'test_helper'

class PsychologistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @psychologist = psychologists(:one)
  end

  test "should get index" do
    get psychologists_url
    assert_response :success
  end

  test "should get new" do
    get new_psychologist_url
    assert_response :success
  end

  test "should create psychologist" do
    assert_difference('Psychologist.count') do
      post psychologists_url, params: { psychologist: { college: @psychologist.college, collegiate_id: @psychologist.collegiate_id, curriculum: @psychologist.curriculum, description: @psychologist.description, first_name: @psychologist.first_name, is_active: @psychologist.is_active, is_approved: @psychologist.is_approved, last_name: @psychologist.last_name, office_address: @psychologist.office_address, photo: @psychologist.photo, status: @psychologist.status, tags: @psychologist.tags } }
    end

    assert_redirected_to psychologist_url(Psychologist.last)
  end

  test "should show psychologist" do
    get psychologist_url(@psychologist)
    assert_response :success
  end

  test "should get edit" do
    get edit_psychologist_url(@psychologist)
    assert_response :success
  end

  test "should update psychologist" do
    patch psychologist_url(@psychologist), params: { psychologist: { college: @psychologist.college, collegiate_id: @psychologist.collegiate_id, curriculum: @psychologist.curriculum, description: @psychologist.description, first_name: @psychologist.first_name, is_active: @psychologist.is_active, is_approved: @psychologist.is_approved, last_name: @psychologist.last_name, office_address: @psychologist.office_address, photo: @psychologist.photo, status: @psychologist.status, tags: @psychologist.tags } }
    assert_redirected_to psychologist_url(@psychologist)
  end

  test "should destroy psychologist" do
    assert_difference('Psychologist.count', -1) do
      delete psychologist_url(@psychologist)
    end

    assert_redirected_to psychologists_url
  end
end
