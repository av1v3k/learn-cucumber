import { Given, When, Then } from "@cucumber/cucumber";
import { expect } from 'chai';

Given(/^Google page is opened$/, async function () {
    await browser.url('https://google.com');
    await browser.pause(1000);
});

When(/^Search with (.*)$/, async function (expectedItem) {
    console.log(expectedItem);

    let ele = await $(`input[name="q"]`);
    await ele.setValue(expectedItem);
    await browser.keys('Enter');
});

Then(/^Click on first search result$/, async function () {
    let ele = await $('<h3>');
    ele.click();
});

Then(/^URL must match (.*)$/, async function (expectedURL) {
    let currenturl = await browser.getUrl();
    expect(currenturl).to.equal(expectedURL);
});