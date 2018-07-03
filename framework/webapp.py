from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
from data.config import settings
import time


class WebApp():
    instance = None

    @classmethod
    def get_instance(cls):
        if cls.instance is None:
            cls.instance = WebApp()
        return cls.instance

    def __init__(self):
        self.driver = webdriver.Chrome()

    def get_driver(self):
        return self.driver

    def load_website(self):
        self.driver.get(settings['url'])

    def enter_data(self, field_name,data):
        field_object = self.driver.find_element_by_name(field_name)
        field_object.send_keys(data)

    def select_date_from_department_list(self,option):
        department_object = Select(self.driver.find_element_by_name("department"))
        department_object.select_by_visible_text(option)

    def clear_data(self,field_name,data):
        field_object = self.driver.find_element_by_name(field_name)
        for i in range(len(data)):
            field_object.send_keys("")
            field_object.send_keys(Keys.BACKSPACE)
        time.sleep(2)

    def click(self,button_name):
        button_object = self.driver.find_element_by_xpath('//button[contains(@type,"'+button_name+'")]')
        button_object.click()

    def is_button_enable_disable(self, button_name, state):
        button_object = self.driver.find_element_by_xpath('//button[contains(@type,"'+button_name+'")]')
        if state == "disable":
            assert False == button_object.is_enabled(), "Button {} is enable".format(button_name)
        elif state == "enable":
            assert True == button_object.is_enabled(), "Button {} is disable".format(button_name)

    def verify_component_exists(self, component):
        assert component in self.driver.find_element_by_tag_name('body').text, \
            "Component {} not found on page".format(component)

    def validate_text(self, message, field_name):
        assert self.driver.find_element_by_xpath("//small[@class='help-block'and @data-bv-validator-for='"+field_name+"' and contains(text(),'"+message+"')]").is_displayed()

    def tearDown(self):
        self.driver.quit()

webapp = WebApp.get_instance()
