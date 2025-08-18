config.load_autoconfig(False)

# Adblock
c.content.blocking.adblock.lists = [
    'https://easylist.to/easylist/easylist.txt',
    'https://easylist.to/easylist/easyprivacy.txt',
    'https://easylist-downloads.adblockplus.org/easylistdutch.txt',
    'https://www.i-dont-care-about-cookies.eu/abp/',
    'https://secure.fanboy.co.nz/fanboy-cookiemonster.txt',
    'https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy.txt'
]

# Colors
c.colors.webpage.darkmode.enabled = True

c.colors.tabs.selected.even.bg = "#b22a2a"
c.colors.tabs.selected.odd.bg = "#b22a2a"
c.colors.tabs.selected.even.fg = "#b22a2a"
c.colors.tabs.selected.odd.fg = "#b22a2a"

# Padding
c.tabs.padding = {"top": 5, "bottom": 5, "left": 9, "right": 9}

# Privacy
config.set("content.webgl", False)
config.set("content.canvas_reading", False)
config.set("content.geolocation", False)
config.set("content.webrtc_ip_handling_policy", "default-public-interface-only")
config.set("content.headers.do_not_track", True)
config.set("content.cookies.accept", "never")
config.set("content.cookies.store", True)
# config.set("content.javascript.enabled", False)

config.set("content.headers.user_agent", "?")

# Scroll
config.set("scrolling.smooth", True)

# Binds
config.bind("<Super-Left>", ":tab-prev")
config.bind("<Super-Right>", ":tab-next")

config.bind("<Super-a>", ":mode-enter insert", mode="normal")
config.bind("<Super-a>", ":mode-enter normal", mode="insert")

config.bind("<Super-x>", ":open -ts https://start.duckduckgo.com")
