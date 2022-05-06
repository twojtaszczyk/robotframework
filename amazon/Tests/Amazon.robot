*** Settings ***
Documentation    This is some basic info about the whole test suite
Library    SeleniumLibrary

*** Variables ***
${BROWSER}  edge

*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
    open browser  http:\\www.amazon.com  ${BROWSER}
    wait until page contains  Your Account
    input text  id=twotabsearchtextbox  Porsche 911
    click button  xpath=//*[@id="nav-search-submit-button"]
    wait until page contains  results for "Porsche 911"
    sleep  3s
    click image  css=#search > div.s-desktop-width-max.s-desktop-content.s-opposite-dir.sg-row > div.s-matching-dir.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(11) > div > div > div > div > div.s-product-image-container.aok-relative.s-image-overlay-grey.s-text-center.s-padding-left-small.s-padding-right-small.s-spacing-small.s-height-equalized > span > a > div > img
    sleep  3s
    click button  id=add-to-cart-button
    sleep  3s
    close browser

*** Keywords ***
