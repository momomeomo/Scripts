#py3.7

from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
import time
import getpass

options = webdriver.ChromeOptions()
options.add_argument('--disable-extensions')
options.add_argument('--profile-directory=Default')
options.add_argument("--incognito")
options.add_argument("--disable-plugins-discovery")
driver = webdriver.Chrome(options=options)
driver.delete_all_cookies()
driver.set_window_size(1000,1000)
driver.set_window_position(0,0)
#driver.implicitly_wait(1)

driver.get("https://steamcommunity.com/login/home/?goto=")

accName = getpass.getpass("Username: ")
accPass = getpass.getpass("Password: ")

# getpass.getpass("Username: ")
# getpass.getpass("Password: ")

for x in range(len(accName)): 
	driver.find_element_by_id("steamAccountName").send_keys(accName[x])

for x in range(len(accPass)): 
	driver.find_element_by_id("steamPassword").send_keys(accPass[x])

driver.find_element_by_xpath("//div[@class='alert alert-success']").Click()



def start1():
    try:
        driver.find_element_by_class_name("item app753 context6").Click()
        time.sleep(1)
        start2()
    except:
        print("cant find, start1")
        time.sleep(1)
        start2()

def start2():
    try:
        driver.find_element_by_class_name("item app753 context6").Click()
        time.sleep(1)
        start1()
    except:
        print("cant find, start2")
        time.sleep(1)
        start1()

start1()

