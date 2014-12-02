package testingresults

class WebButtonProd {
    String browser
    String browserVersion
    String os
    String type
    Date lastTested
    String result
    String relatedTickets
    String notes
    static constraints = {
        browser(inList: ["Chrome","Firefox","IE","Safari","Android Browser","Android Chrome","iOS Chrome","iOS Safari"])
        browserVersion(nullable: true)
        os(inList: ["Android","iOS","OSX Mavericks", "OSX Yosemite","Windows 7","Windows 8", "Windows 10"])
        type(inList: ["Flash","WebRTC"])
        lastTested(nullable: false)
        result(inList: ["PASS","FAIL"])
        notes(nullable: true)
        relatedTickets(url: true, nullable: true)
    }
    static mapping = {
        notes type: 'text'
//        lastTested type: PersistentLocalDateTime
    }
}
