import testingresults.Browsers

class BootStrap {

    def init = { servletContext ->
        Browsers ie10WindowsFlash = Browsers.findOrSaveWhere(browserName: "IE 10 - Windows", bv: "10", os: "Windows 7", type: "Flash", bId: "IE")
        Browsers ie11WindowsFlash = Browsers.findOrSaveWhere(browserName: "IE 11 - Windows", bv: "11", os: "Windows 8", type: "Flash", bId: "IE")
        Browsers chromeWinFlash = Browsers.findOrSaveWhere(browserName: "Chrome - Windows - Flash", bv: "Latest", os: "Windows 7", type: "Flash", bId: "Chrome")
        Browsers firefoxWinFlash = Browsers.findOrSaveWhere(browserName: "Firefox - Windows - Flash", bv: "Latest", os: "Windows 7", type: "Flash", bId: "Firefox")
        Browsers chromeWin8Flash = Browsers.findOrSaveWhere(browserName: "Chrome - Windows - Flash", bv: "Latest", os: "Windows 8", type: "Flash", bId: "Chrome")
        Browsers firefoxWin8Flash = Browsers.findOrSaveWhere(browserName: "Firefox - Windows - Flash", bv: "Latest", os: "Windows 8", type: "Flash", bId: "Firefox")
        Browsers chromeOsxFlash = Browsers.findOrSaveWhere(browserName: "Chrome - OSX - Flash", bv: "Latest", os: "OSX Mavericks", type: "Flash", bId: "Chrome")
        Browsers safariOsxFlash = Browsers.findOrSaveWhere(browserName: "Safari - OSX - Flash", bv: "Latest", os: "OSX Mavericks", type: "Flash", bId: "Firefox")
        Browsers chromeOsxYFlash = Browsers.findOrSaveWhere(browserName: "Chrome - OSX - Flash", bv: "Latest", os: "OSX Yosemite", type: "Flash", bId: "Chrome")
        Browsers safariOsxYFlash = Browsers.findOrSaveWhere(browserName: "Safari - OSX - Flash", bv: "Latest", os: "OSX Yosemite", type: "Flash", bId: "Firefox")
        Browsers chromeWinWebrtc = Browsers.findOrSaveWhere(browserName: "Chrome - Windows - WebRTC", bv: "Latest", os: "Windows 7", type: "WebRTC", bId: "Chrome")
        Browsers firefoxWinWebrtc = Browsers.findOrSaveWhere(browserName: "Firefox - Windows - WebRTC", bv: "Latest", os: "Windows 7", type: "WebRTC", bId: "Firefox")
        Browsers chromeWin8Webrtc = Browsers.findOrSaveWhere(browserName: "Chrome - Windows - WebRTC", bv: "Latest", os: "Windows 8", type: "WebRTC", bId: "Chrome")
        Browsers firefoxWin8Webrtc = Browsers.findOrSaveWhere(browserName: "Firefox - Windows - WebRTC", bv: "Latest", os: "Windows 8", type: "WebRTC", bId: "Firefox")
        Browsers chromeOsxWebrtc = Browsers.findOrSaveWhere(browserName: "Chrome - OSX - WebRTC", bv: "Latest", os: "OSX Mavericks", type: "WebRTC", bId: "Chrome")
        Browsers firefoxOsxWebrtc = Browsers.findOrSaveWhere(browserName: "Firefox - OSX - WebRTC", bv: "Latest", os: "OSX Mavericks", type: "WebRTC", bId: "Firefox")
        Browsers chromeOsxYWebrtc = Browsers.findOrSaveWhere(browserName: "Chrome - OSX - WebRTC", bv: "Latest", os: "OSX Yosemite", type: "WebRTC", bId: "Chrome")
        Browsers firefoxOsxYWebrtc = Browsers.findOrSaveWhere(browserName: "Firefox - OSX - WebRTC", bv: "Latest", os: "OSX Yosemite", type: "WebRTC", bId: "Firefox")

        Browsers iosSafari = Browsers.findOrSaveWhere(browserName: "iOS - Safari", bv: "Latest", os: "iOS", type: "WebRTC", bId: "Safari")
        Browsers iosChrome = Browsers.findOrSaveWhere(browserName: "iOS - Chrome", bv: "Latest", os: "iOS", type: "WebRTC", bId: "Chrome")
        Browsers androidBrowser = Browsers.findOrSaveWhere(browserName: "Android Browser", bv: "Latest", os: "Android", type: "WebRTC", bId: "Android Browser")
        Browsers androidChrome = Browsers.findOrSaveWhere(browserName: "Android Chrome", bv: "Latest", os: "Android", type: "WebRTC", bId: "Chrome")
    }
    def destroy = {
    }
}
