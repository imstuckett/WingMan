//
//  VenueAnnotations.swift
//  Wing Man
//
//  Created by Sam Tuckett on 25/02/2018.
//  Copyright © 2018 Samuel Tuckett. All rights reserved.
//

import UIKit
import MapKit

class VenueAnnotations{
    var annotations:[VenueAnnotation] = []
    init(){
        //The Cider Press
        var annotation = VenueAnnotation( coordinate: CLLocationCoordinate2DMake(51.474330 , -2.591861), title: "The Cider Press", subtitle: "Sports & Cider Bar")
        annotation.goingPhoto = #imageLiteral(resourceName: "goingphoto")
        annotation.dealPhoto = #imageLiteral(resourceName: "ciderpressdeal")
        annotation.goingOne = #imageLiteral(resourceName: "persontwo")
        annotation.goingTwo = #imageLiteral(resourceName: "personone")
        annotation.goingThree = #imageLiteral(resourceName: "personsix")
        annotation.goingFour = #imageLiteral(resourceName: "personfour")
        annotation.historyText = "We are a lively bar in the heart of Gloucester Rd famous for showing sport show but also we are now being well known for our  amazing pizzas, tapas & burgers. We also do a quiz on a Monday with amazing prizes to be won with an open mic night on a Thursday as well as live music every Friday. Follow us on twitter @ciderpressbris."
        annotation.venuePhoto = #imageLiteral(resourceName: "ciderpress")
        annotation.myPhoto = #imageLiteral(resourceName: "myphoto")
        self.annotations.append(annotation)
        
        //Gallimaufry
        annotation = VenueAnnotation( coordinate: CLLocationCoordinate2DMake(51.471687 , -2.592693), title: "Gallimaufry", subtitle: "Bar & Live Music")
        annotation.goingPhoto = #imageLiteral(resourceName: "goingphoto")
        annotation.dealPhoto = #imageLiteral(resourceName: "gallideal")
        annotation.goingOne = #imageLiteral(resourceName: "personone")
        annotation.historyText = "What does the word ‘gallimaufry’ mean? Once a hodgepodge stew of humble ingredients made on the galleys, it evolved to represent up-cycled things to wear and use around the home. Our interpretation? Making the best out of what’s available to us on a daily basis. Re-using, up-cycling or re-cycling; working with local suppliers, artists & artisans wherever possible."
        annotation.venuePhoto = #imageLiteral(resourceName: "gallimaufry")
        annotation.myPhoto = #imageLiteral(resourceName: "myphoto")
        self.annotations.append(annotation)
        
        //Anchor
        annotation = VenueAnnotation( coordinate: CLLocationCoordinate2DMake(51.481319 , -2.587699), title: "The Anchor", subtitle: "Pub and Sports Bar")
        annotation.goingPhoto = #imageLiteral(resourceName: "goingphoto")
        annotation.dealPhoto = #imageLiteral(resourceName: "anchordeal")
        annotation.goingOne = #imageLiteral(resourceName: "personthree")
        annotation.historyText = "Over the years, the Anchor has developed a reputation as one of the cities best Sports bar with nine screens, A great bar for any sporting occasion. When the sun is shining customers can sit in our outside area watching the world go by with a drink or two, our friendly staff welcome all while serving great food, there's always a reason to visit!"
        annotation.venuePhoto = #imageLiteral(resourceName: "anchor")
        annotation.myPhoto = #imageLiteral(resourceName: "myphoto")
        self.annotations.append(annotation)
        
        //Cat and Wheel
        annotation = VenueAnnotation( coordinate: CLLocationCoordinate2DMake(51.468831 , -2.593090), title: "Cat and Wheel", subtitle: "Pub")
        annotation.goingPhoto = #imageLiteral(resourceName: "goingphoto")
        annotation.dealPhoto = #imageLiteral(resourceName: "catandwheeldeal")
        annotation.goingOne = #imageLiteral(resourceName: "personfour")
        annotation.historyText = "The Cat and Wheel is fast becoming one of the last bastions of pubs that have not succumbed to a big pub corporate that tells us what to serve and when to serve it. We don’t think that would work at the Cat and Wheel – after extensive research it was agreed that one hundred percent of our customers love our friendly service."
        annotation.venuePhoto = #imageLiteral(resourceName: "catnwheel")
        annotation.imGoing = #imageLiteral(resourceName: "myphoto")
        self.annotations.append(annotation)
        
        //Commercial Rooms
        annotation = VenueAnnotation( coordinate: CLLocationCoordinate2DMake(51.454485 , -2.594491), title: "Commercial Rooms", subtitle: "Bar with Food")
        annotation.goingPhoto = #imageLiteral(resourceName: "goingphoto")
        annotation.dealPhoto = #imageLiteral(resourceName: "crdeal")
        annotation.goingOne = #imageLiteral(resourceName: "personfive")
        annotation.historyText = "The Commercial Rooms is a Wetherspoon pub in Bristol. Our pub offers a range of real ales, craft beers and freshly ground Lavazza coffee. Breakfast is served until noon, with our full food menu available until 11pm."
        annotation.venuePhoto = #imageLiteral(resourceName: "commercialrooms")
        annotation.myPhoto = #imageLiteral(resourceName: "myphoto")
        self.annotations.append(annotation)
        
        //SU
        annotation = VenueAnnotation( coordinate: CLLocationCoordinate2DMake(51.500535 , -2.551585), title: "The SU", subtitle: "Student Bar")
        annotation.goingPhoto = #imageLiteral(resourceName: "goingphoto")
        annotation.dealPhoto = #imageLiteral(resourceName: "sudeal")
        annotation.goingOne = #imageLiteral(resourceName: "personsix")
        annotation.historyText = "Frenchay Bar and Coffee Shop. Enjoy Starbucks coffee, live sport on our massive screens and epic club nights, specifically for the Students of UWE."
        annotation.venuePhoto = #imageLiteral(resourceName: "su")
        annotation.myPhoto = #imageLiteral(resourceName: "myphoto")
        self.annotations.append(annotation)
        
        //Blue Lagoon
        annotation = VenueAnnotation( coordinate: CLLocationCoordinate2DMake(51.471410 , -2.592993), title: "Blue Lagoon", subtitle: "Sports Bar with Live Music")
        annotation.goingPhoto = #imageLiteral(resourceName: "goingphoto")
        annotation.dealPhoto = #imageLiteral(resourceName: "bluedeal")
        annotation.goingOne = #imageLiteral(resourceName: "personseven")
        annotation.historyText = "Open mic nights and local bands in vibrant live music bar with big-screen sports."
        annotation.venuePhoto = #imageLiteral(resourceName: "bluelagoon")
        annotation.myPhoto = #imageLiteral(resourceName: "myphoto")
        self.annotations.append(annotation)
        
        //Walkabout
        annotation = VenueAnnotation( coordinate: CLLocationCoordinate2DMake(51.454309 , -2.594415), title: "Walkabout", subtitle: "Sports Bar")
        annotation.goingPhoto = #imageLiteral(resourceName: "goingphoto")
        annotation.dealPhoto = #imageLiteral(resourceName: "walkaboutdeal")
        annotation.goingOne = #imageLiteral(resourceName: "personeight")
        annotation.historyText = "Welcome to Walkabout Bristol! We are the home of awesome parties, sports, great Aussie Tucker and Aussie Drinks! So why not eat ‘til you pop, dance ‘til you drop. Watch your favourite team, or relax with a cold one… It’s all here waiting for you and your mates. So get ready for a chilled out arvo or a legendary night out - Aussie style."
        annotation.venuePhoto = #imageLiteral(resourceName: "walkabout")
        annotation.myPhoto = #imageLiteral(resourceName: "myphoto")
        self.annotations.append(annotation)
    }
}
