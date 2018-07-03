from behave import given, when, then
from framework.webapp import webapp

@given(u'I load the website')
def step_impl_load_website(context):
    webapp.load_website()

@then(u'I see "{component}" page')
def step_impl_verify_component(context, component):
    webapp.verify_component_exists(component)

@when(u'Enter "{data}" in field "{field_name}"')
def step_impl_Enter_data(context, field_name,data):
    webapp.enter_data(field_name,data)

@when(u'Select "{option}" as Department/office')
def step_impl_select_date_from_department_list(context, option):
    webapp.select_date_from_department_list(option)


@then(u'Clear "{data}" from field "{field_name}"')
def step_impl_clear_field_data(context, field_name,data):
    webapp.clear_data(field_name,data)

@then(u'Click on "{button_name}" Button')
def step_impl_click_button(context, button_name,):
    webapp.click(button_name)

@then(u'Is "{button_name}" button "{state}"')
def step_validate_is_button_enable_disable(context, button_name, state):
    webapp.is_button_enable_disable(button_name, state)

@then(u'Error messagge "{message}" displayed in "{field_name}" field')
def step_validate_error_message(context, message, field_name):
    webapp.validate_text(message, field_name)

@then(u'TearDown webdriver object')
def step_impl_teardown(context):
    webapp.tearDown()