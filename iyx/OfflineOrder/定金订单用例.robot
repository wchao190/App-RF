*** Settings ***
Suite Setup
Library           MyLibrary
Resource          ./定金订单业务.txt
Resource          ../公共部分/公共数据.txt

*** Test Cases ***
新建订单成功
    [Documentation]    ${username} | ${pwd} | ${phone} | ${name} | ${series} | ${market} | ${vehicle_color} | ${inner_color} | ${exchange} | ${payments} | ${deposit} | ${mark}|${factor}|${swipe_time}
    [Tags]    iyx
    [Setup]
    新建定金订单    ${username}    ${pwd}    ${phone}    ${name}    ${series}    ${market}    ${vehicle_color}    ${inner_color}    ${exchange}    ${payments}    ${deposit}    ${mark}    ${factor}    ${swipe_time}
    [Teardown]    close application
