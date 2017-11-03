//: [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 1400, height: 900)

canvas.defaultBorderWidth = 7

for x in stride(from: 25, through: 1375, by: 50){
    for y in stride(from:1375, through: 25, by: -50){
        //color.white
        canvas.fillColor = Color.white
        canvas.borderColor = Color.blue
        canvas.drawEllipse(centreX: x, centreY: y, width: 25, height: 25)
        
        
        let randomvalue = random(from: 1, toButNotIncluding: 5)
        
        // Make the black circle be further down
        if randomvalue == 1 {
            canvas.fillColor = Color.init(hue: 250, saturation: 100, brightness: 100, alpha: 100)
            canvas.drawRoundedRectangle(centreX: x, centreY: y - 15, width: 25, height: 25)
        } else if  randomvalue == 2 {
            // Make the black circle be further up
            canvas.fillColor = Color.init(hue: 150, saturation: 100, brightness: 100, alpha: 100)
             canvas.drawRectangle(centreX: x, centreY: y + 15, width: 25, height: 25)
        
        } else if  randomvalue == 3 {
            // Make the black circle be further left
            canvas.fillColor = Color.init(hue: 90, saturation: 50, brightness: 100, alpha: 100)
            canvas.drawRectangle(centreX: x - 15, centreY: y, width: 25, height: 25)
            
    
        } else {
            // Make the black circle be further right
            canvas.fillColor = Color.init(hue: 200, saturation: 50, brightness: 100, alpha: 100)
            canvas.drawRectangle(centreX: x + 15, centreY: y, width: 25, height: 25)
            
        }
        
        
        
    }
    
}


canvas.copyToClipboard()

/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView


