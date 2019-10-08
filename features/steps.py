from lettuce import *
from splinter import Browser
import requests
import sys

url = "https://www.sonymobile.com"


@step(u'Given There are numbers 2 and 3')
def given_there_are_numbers_2_and_3(step):
    world.a = 2
    world.b = 3


@step(u'When added together')
def when_added_together(step):
    world.total = world.a + world.b


@step(u'Then they equal 5')
def then_they_equal_5(step):
    assert (world.total == 5), 'Amount should equal 5'

######## Step Definitions ########


@step('I visit "(.*)"')
def i_visit_group1(step, site):
    global r
    r = requests.get(url + site)


@step('I should get 200')
def i_should_get_200(step):
    assert (r.status_code == 200), 'Response should be 200'


@step('I should not get 200')
def i_should_not_get_200(step):
    assert (r.status_code != 200), 'Response should not be 200'


@step('I am located in "(.*)"')
def i_am_located_in_group1(step, arg1):
    global location
    location = arg1


@step('I have language "(.*)"')
def i_have_language_group1(step, arg2):
    global language
    language = arg2


@step('I visit with these setting')
def i_visit_with_these_setting(step):
    global r
    headers = {"user-agent": "", "accept-language": language, "country-code": location}
    r = requests.get("https://www.sonymobile.com", headers=headers)


@step('I should get redirected to "(.*)"')
def i_should_get_redirected_to_group1(step, site):
    parsed_str = r.url.split("/")
    assert (parsed_str[3] == site), 'Should redirect to the correct site'

######## Selenium Step Definations ########


@step('I use Selenium')
def i_use_selenium(step):
    global browser
    # browser = Browser('chrome')
    browser = Browser(driver_name="remote",
                      url='http://127.0.0.1:4444/wd/hub',
                      browser='chrome')


@step('I go to "([^"]*)"')
def i_go_to_group1(step, group1):
    browser.visit(url+group1)


@step('I should see the text "([^"]*)"')
def i_should_see_the_text_group1(step, text):
    t=browser.is_text_present(text)
    if t is False:
        browser.quit()
        assert t, 'Text not found!'


@step('close Selenium session')
def close_selenium_session(step):
    browser.quit()
