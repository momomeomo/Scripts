#py3.7

import getpass
import time

from selenium import webdriver
from selenium.common.exceptions import (NoSuchElementException,
                                        WebDriverException)
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.ui import WebDriverWait

options = webdriver.ChromeOptions()
options.add_argument('--disable-extensions')
options.add_argument('--profile-directory=Default')
# options.add_argument("--incognito")
options.add_argument("--disable-plugins-discovery")
driver = webdriver.Chrome(options=options)
# driver.delete_all_cookies()
# driver.set_window_size(1000,1000)
# driver.set_window_position(0,0)
driver.implicitly_wait(1)

# driver.get("https://steamcommunity.com/login/home/?goto=")

# accName = getpass.getpass("Username: ")
# accPass = getpass.getpass("Password: ")

# getpass.getpass("Username: ")
# getpass.getpass("Password: ")

# for x in range(len(accName)): 
# 	driver.find_element_by_id("steamAccountName").send_keys(accName[x])

# for x in range(len(accPass)): 
# 	driver.find_element_by_id("steamPassword").send_keys(accPass[x])

# driver.find_element_by_xpath("//div[@class='alert alert-success']").Click()




# def start1():
#     try:
#         driver.find_element_by_class_name("item app753 context6").Click()
#         time.sleep(1)
#         start2()
#     except:
#         print("cant find, start1")
#         time.sleep(1)
#         start2()

# def start2():
#     try:
#         driver.find_element_by_class_name("item app753 context6").Click()
#         time.sleep(1)
#         start1()
#     except:
#         print("cant find, start2")
#         time.sleep(1)
#         start1()

# start1()




# def start1():
#     try:
#         meme = driver.find_elements_by_class_name('inventory_item_link')
#         for x in range(0,len(meme)):
#             if meme[x].is_displayed():
#                 meme[x].click()
#                 pause = input("clicked1")
#                 try:
#                     price = driver.find_element_by_xpath('//*[@id="iteminfo0_item_market_actions"]/div/div[2]')
#                 except:
#                     price = driver.find_element_by_xpath('//*[@id="iteminfo1_item_market_actions"]/div/div[2]')
#                     pause = input("exceptinner")
#                 for c in range(0,len(price)):
#                     print(c.text)
#                 pause = input("Paused1")
#         print("end1")
#         time.sleep(1)
#         # start2()
#     except:
#         print("cant find, start1")
#         time.sleep(1)
        # start2()

# def start2():
#     try:
#         meme = driver.find_elements_by_class_name('inventory_item_link')
#         for x in range(0,len(meme)):
#             if meme[x].is_displayed():
#                 meme[x].click()
#                 pause = input("Paused2")
#         print("end2")
#         time.sleep(1)
#         start1()
#     except:
#         print("cant find, start2")
#         time.sleep(1)
#         start1()




driver.get("")
driver.maximize_window()

def rewind():
    try:
        meme = driver.find_elements_by_class_name('inventory_item_link')
        for x in range(0,len(meme)):
            if meme[x].is_displayed():
                meme[x].click()
                driver.execute_script('javascript:SellCurrentSelection()')
                hold = input("meme")
        rewind2()
    except:
        rewind2()

def rewind2():
    pause = input("Waiting")
    rewind()

# id=market_sell_dialog_accept_ssa
# css=div.newmodal_close
# css=#market_sell_dialog_accept > span

def start3():
    try:
        meme = driver.find_elements_by_class_name('inventory_item_link')
        for x in range(0,len(meme)):
            if meme[x].is_displayed():
                meme[x].click()
                driver.execute_script('javascript:SellCurrentSelection()')
            time.sleep(1)
            start4()
    except:
        print("failed")
        pause = input("failed")
        time.sleep(1)
        start4()


# start3()
rewind2()


# css=#iteminfo1_item_market_actions div:nth-child(2)
# css=span.item_market_action_button_contents
# javascript:SellCurrentSelection()
