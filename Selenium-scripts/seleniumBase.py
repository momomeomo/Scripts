#3.7
from pynput.keyboard import Key, Controller
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait

#
#keyboard = Controller()
#
#options = webdriver.ChromeOptions()
#options.add_argument('--disable-extensions')
#options.add_argument('--profile-directory=Default')
#options.add_argument("--incognito")
#options.add_argument("--disable-plugins-discovery");
#driver = webdriver.Chrome(options=options)
#driver.delete_all_cookies()
#driver.set_window_size(800,800)
#driver.set_window_position(1000,0)
#print("Setup complete")
#
#driver.get('')
#
#end = input("PRESS ENTER TO meme") #pauses execution till anything is taken

#meme1 = ""
#
#meme = ""
#
#try:
#	driver.find_element_by_id('startNewConversationButton').click()
#	print("Button found")
#	driver.implicitly_wait(1)
#	driver.find_element_by_id("contactInput").click()
#	print("click")
#	driver.find_element_by_id("contactInput").send_keys(meme1)
#	print("backspace")
#	driver.find_element_by_id("contactInput").send_keys("6548764444")
#	print("meme")
#	#driver.find_element_by_id("contactInput").send_keys(keys.)
#	#driver.execute_script("document.getElementById('contactInput').value = '';");
#	# for x in range(0,len(meme)):
#    # if meme[x].is_displayed():
#        # driver.find_element_by_id('contactInput').send_keys(Keys.RETURN)
#	print("typed")
#	#driver.find_element_by_id('contactInput').send_keys(Keys.RETURN)
#	#driver.find_element_by_id('contactInput').send_keys("")
#	#print("Contact Written")
#	#driver.implicitly_wait(1)
#	driver.find_element_by_class_name("emojionearea-editor").click()
#	driver.find_element_by_class_name("emojionearea-editor").send_keys("hello")
#	driver.find_element_by_class_name("emojionearea-editor").click()
#	#print("SMS written")
#	#driver.implicitly_wait(1)
#	#driver.execute_script("document.getElementById('sendButton').click();");
#	driver.find_element_by_id('sendButton').click()
#	print("Sent sms")
#except:
#	errorcatch = input("ERROR: make sure your on the correct webpage after logging in, press enter to continue")
#	pass


