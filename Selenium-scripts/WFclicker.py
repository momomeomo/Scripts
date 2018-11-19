
from selenium import webdriver
import getpass

driver = webdriver.Chrome()
driver.get ('https://www.twitch.tv/')

wait = input("PRESS ENTER TO CONTINUE.")

driver.get ('https://www.warframe.com/community/partners#partnerIndex')

##
# try:
	# driver.find_elements_by_css_selector('div.twitchLive').click()
# except:
	# print("selector not found")
	# pass

# meme = driver.find_elements_by_css_selector('div.twitchLive').click()

meme = driver.find_elements_by_css_selector('div.twitchLive')

for x in range(0,len(meme)):
    if meme[x].is_displayed():
        meme[x].click()

##
# try:
	# driver.find_element_by_class_name('twitchLive').click()
# except:
	# print("class not found")
	# pass
	
# try:
	# driver.find_element_by_xpath("//div[class='twitchLive']").click()
# except:
	# print("xpath not found")