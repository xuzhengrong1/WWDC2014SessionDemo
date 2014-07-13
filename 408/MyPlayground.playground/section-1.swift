// Playground - noun: a place where people can play
/*
Conceptual background
Learning, exploration, and visualization
Resources
Algorithm development
XCPlayground
Custom Quick Looks
Custom view development
Asynchronous code
Limitations
*/
import Cocoa

var str = "Hello, playground"
for i in 0...99 {
    i * i
}
let color = NSColor.orangeColor()

let attrStr = NSAttributedString(string: str, attributes: [NSForegroundColorAttributeName: color, NSFontAttributeName: NSFont.systemFontOfSize(25)])

let imageName = [NSImageNameUser, NSImageNameUserAccounts, NSImageNameUserGroup, NSImageNameUserGuest]

let images = imageName.map({NSImage(named: $0)})

images

let image = images[0]

let imageView = NSImageView(frame: NSRect(x: 0, y: 0, width: 100, height: 100))
imageView.image = image
imageView.imageScaling = NSImageScaling.ImageScaleProportionallyUpOrDown
imageView

let logoImage = NSImage(named: "logo.png")
imageView.image = logoImage
imageView

let url = NSURL(string: "http://alayshchen.github.io")



