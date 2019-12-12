require 'application_system_test_case'

class PsychologistsTest < ApplicationSystemTestCase
  setup { @psychologist = psychologists(:one) }

  test 'visiting the index' do
    visit psychologists_url
    assert_selector 'h1', text: 'Psychologists'
  end

  test 'creating a Psychologist' do
    visit psychologists_url
    click_on 'New Psychologist'

    fill_in 'College', with: @psychologist.college
    fill_in 'Collegiate', with: @psychologist.collegiate_id
    fill_in 'Curriculum', with: @psychologist.curriculum
    fill_in 'Description', with: @psychologist.description
    fill_in 'First name', with: @psychologist.first_name
    fill_in 'Is active', with: @psychologist.is_active
    fill_in 'Is approved', with: @psychologist.is_approved
    fill_in 'Last name', with: @psychologist.last_name
    fill_in 'Office address', with: @psychologist.office_address
    fill_in 'Photo', with: @psychologist.photo
    fill_in 'Status', with: @psychologist.status
    fill_in 'Tags', with: @psychologist.tags
    click_on 'Create Psychologist'

    assert_text 'Psychologist was successfully created'
    click_on 'Back'
  end

  test 'updating a Psychologist' do
    visit psychologists_url
    click_on 'Edit', match: :first

    fill_in 'College', with: @psychologist.college
    fill_in 'Collegiate', with: @psychologist.collegiate_id
    fill_in 'Curriculum', with: @psychologist.curriculum
    fill_in 'Description', with: @psychologist.description
    fill_in 'First name', with: @psychologist.first_name
    fill_in 'Is active', with: @psychologist.is_active
    fill_in 'Is approved', with: @psychologist.is_approved
    fill_in 'Last name', with: @psychologist.last_name
    fill_in 'Office address', with: @psychologist.office_address
    fill_in 'Photo', with: @psychologist.photo
    fill_in 'Status', with: @psychologist.status
    fill_in 'Tags', with: @psychologist.tags
    click_on 'Update Psychologist'

    assert_text 'Psychologist was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Psychologist' do
    visit psychologists_url
    page.accept_confirm { click_on 'Destroy', match: :first }

    assert_text 'Psychologist was successfully destroyed'
  end
end
