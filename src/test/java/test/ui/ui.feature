Feature: TechTest UI

Scenario: UI Automation
  * def trimText = function(text){ return text.trim(); }
  * def input = 'apply for a number plate'
  * def password = 'secret_sauce'

  Given driver 'https://www.service.nsw.gov.au/'
  And waitForEnabled("//div[@id='global-header']")
  When waitForEnabled("(//input[@placeholder='Search'])[1]").click()
  And input("(//input[@placeholder='Search'])[1]", input)
  And waitForEnabled("(//button[@role='option'][normalize-space()='apply for a number plate'])[1]").click()
  Then match text("(//h2[@id='results-found-for-apply-for-a-number-plate'])[1]") contains input

    # the button and selector is not found in the website for below steps
    # 3.Click on Locate us button 
    # 4.Enter suburb "Sydney 2000" 
    # 5.It should use service centre named as "Marrickville Service Centre" 
    # Make above test as data-driven so that search items can be replaced with anything in step 4 and filtered result in Step 5 
    # Like “Sydney Domestic Airport 2020” and it should be having “Rockdale Service Centre” 