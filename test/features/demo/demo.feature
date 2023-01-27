Feature: Demo feature

    @demo
    Scenario Outline: Run first demo feature
        Given Google page is opened
        When Search with <SearchItem>
        Then Click on first search result
        Then URL must match <ExpectedURL>


        Examples:
            | TestID     | SearchItem | ExpectedURL           |
            | demo-tc001 | wdio       | https://webdriver.io/ |