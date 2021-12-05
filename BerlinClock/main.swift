//
//  main.swift
//  BerlinClock
//
//  Created by Temirlan Idrissov on 02.12.2021.
//

import Foundation

struct BerlinClock {

    static func getSeconds(seconds: Int) -> String {
        if seconds % 2 == 0 {
            return "Y"
        }else {
            return "O"
        }
    }
    
    static func getFiveHoursLamps(hours: Int) -> String {
        var lamps = ["O", "O", "O", "O"]
        let hourLamps = hours / 5
        if hourLamps >= 1 {
            for i in 0...hourLamps - 1{
                lamps[i] = "R"
            }
        }
        let result = lamps.joined(separator: "")
        
        return result
        
    }
    
    static func getOneHourLamps(hours: Int) -> String {
        var lamps = ["O", "O", "O", "O"]
        let hourLamps = hours % 5
        if hourLamps >= 1  {
            for i in 0...hourLamps - 1{
                lamps[i] = "R"
            }
        }
        let result = lamps.joined(separator: "")
        return result
    }
    
    static func getFiveMinutesLamps(minutes: Int) -> String {
        var lamps = ["O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O" ]
        let minutesLamps = minutes / 5
        if minutesLamps >= 1{
            for i in 1...minutesLamps {
                if i % 3 == 0{
                    lamps[i] = "R"
                }else {
                    lamps[i] = "Y"
                }
            }
        }
        
        lamps.remove(at: 0)
        let result = lamps.joined(separator: "")
        return result
    }
    
    static func getOneMinuteLamps(minutes: Int) -> String {
        var lamps = ["O", "O", "O", "O"]
        let minuteLamps = minutes % 5
        
        if minuteLamps >= 1 {
            for i in 0...minuteLamps - 1{
                lamps[i] = "Y"
            }
        }
        
        let result = lamps.joined(separator: "")
        return result
    }
    
    static func getResult(h hours: Int, m minutes: Int, s seconds: Int) -> String{
        let result = getSeconds(seconds: seconds) + "-" + getFiveHoursLamps(hours: hours) + "-" + getOneHourLamps(hours: hours) + "-" + getFiveMinutesLamps(minutes: minutes) + "-" + getOneMinuteLamps(minutes: minutes)
        
        return result
    }
    
    
}




func timeResult() {
    print("Please enter hours: ")
    let hours = readLine()
    
    print("Please ENTER minutes:")
    let minutes = readLine()
    
    print("Please ENTER seconds: ")
    let seconds = readLine()
    
    guard let hoursCheck = hours, let minutesCheck = minutes, let secondsCheck = seconds  else {return}
    
    guard let hoursInt = Int(hoursCheck), let minutesInt = Int(hoursCheck), let secondsInt = Int(secondsCheck) else {return}
    
    print(BerlinClock.getResult(h: hoursInt, m: minutesInt , s: secondsInt))
}



timeResult()
//print(BerlinClock.getSeconds(seconds: 59))
//print(BerlinClock.getFiveHoursLamps(hours: 23))
//print(BerlinClock.getOneHourLamps(hours: 23))
//print(BerlinClock.getFiveMinutesLamps(minutes: 59))
//print(BerlinClock.getOneMinuteLamps(minutes: 59))


