
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from pynput.keyboard import Key, Controller

options = webdriver.ChromeOptions()
#prefs = {'profile.managed_default_content_settings.images':2}
#options.add_experimental_option("prefs", prefs)
options.add_argument('--disable-extensions')
options.add_argument('--profile-directory=Default')
options.add_argument("--incognito")
options.add_argument("--disable-plugins-discovery");
#options.add_argument("--start-maximized")
driver = webdriver.Chrome(options=options)
driver.delete_all_cookies()
driver.set_window_size(800,800)
driver.set_window_position(0,0)
print("Setup complete")

driver.get ('')

wait = input("PRESS ENTER TO CONTINUE") #assigns random unused variable pauses execution till anything is taken
print("Starting")
driver.implicitly_wait(3)


try:
	driver.find_element_by_id('startNewConversationButton').click()
	print("ID passed")
except:
	print("ID not passed")
	pass

# try:
	# driver.find_element_by_name('startNewConversationButton').click()
	# print("Name passed")
# except:
	# print("Name not passed")
	# pass
	
# try:
	# driver.find_element_by_class('message-cta button button--yellow icon-pencil-icon').click()
	# print("Class passed")
# except:
	# print("Class not passed")
	# pass
	
# try:
	# driver.find_element_by_css_selector('div.startNewConversationButton').click()
	# print("CSS passed")
# except:
	# print("CSS not passed")
	# pass

# try:
	# driver.find_element_by_xpath(".//*[@id=’startNewConversationButton’]").click()
	# print("xpath passed")
# except:
	# print("xpath not passed")
	# pass

# try:
	# driver.find_element_by_css_selector("a[ng-click='vm.startNewConversation()']").click()
	# print("CSS 2 passed")
# except:
	# print("CSS 2 not passed")
	# pass

end = input("PRESS ENTER TO EXIT") #pauses execution till anything is taken
driver.quit()

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
#	driver.find_element_by_id("contactInput").send_keys("")
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