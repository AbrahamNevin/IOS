import Cocoa

class Event {
    var eventName: String
    var location: String
    var date : String
    var organizer: String
    init(eventName:String, location:String, date:String, organizer:String){
        self.date = date
        self.eventName = eventName
        self.location = location
        self.organizer = organizer
    }
    func scheduleEvent(){
        
    }
    func rescheduleEvent(date:String){
        
    }
    func displayInfo(){
        print("Name of Event \(eventName) \n Date \(date) \n Location \(location) \n Organizer \(organizer)")
    }
}

class Satsang: Event {
    var speakerName: String
    var bhajanList:String
    var duration:String
    init(speakerName: String, bhajanList: String, duration: String) {
        self.speakerName = speakerName
        self.bhajanList = bhajanList
        self.duration = duration
        
        super.init(eventName: "Satsang", location: "Pune", date: "2021-07-20", organizer: "Omkar")
        }
}

let satsangEvent = Satsang(speakerName: "Shri Ram", bhajanList: "Shri Ram Bhajan", duration: "2 hours")
print(satsangEvent.eventName)

class Concert : Event {
    var performer : String
    var genre : String
    var ticketPrice : Double
    var seatAvailable : Int
    init(performer: String, genre: String, ticketPrice: Double, seatAvailable: Int) {
        self.performer = performer
        self.genre = genre
        self.ticketPrice = ticketPrice
        self.seatAvailable = seatAvailable
        super.init(eventName: "concert", location: "Mumbai", date: "2021-07-20", organizer: "Coldplay")
    }
}
