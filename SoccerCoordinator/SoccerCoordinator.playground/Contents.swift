//: Playground - noun: a place where people can play

import UIKit

// Add in data of Players
let player1: [String: String] = ["name": "Joe Smith", "height": "42", "experience": "Yes", "guardians": "Jim and Jan Smith"]
let player2: [String: String] = ["name": "Jill Tanner", "height": "36", "experience": "Yes", "guardians": "Clara Tanner"]
let player3: [String: String] = ["name": "Bill Bon", "height": "43", "experience": "Yes", "guardians": "Sara and Jenny Bon"]
let player4: [String: String] = ["name": "Eva Gordon", "height": "45", "experience": "No", "guardians": "Wendy and Mike Gordon"]
let player5: [String: String] = ["name": "Matt Gill", "height": "40", "experience": "No", "guardians": "Charles and Sylvia Gill"]
let player6: [String: String] = ["name": "Kimmy Stein", "height": "41", "experience": "No", "guardians": "Bill and Hillary Stein"]
let player7: [String: String] = ["name": "Sammy Adams", "height": "45", "experience": "No", "guardians": "Jeff Adams"]
let player8: [String: String] = ["name": "Karl Saygan", "height": "42", "experience": "Yes", "guardians": "Heather Bledsoe"]
let player9: [String: String] = ["name": "Suzane Greenberg", "height": "44", "experience": "Yes", "guardians": "Henrietta Dumas"]
let player10: [String: String] = ["name": "Sal Dali", "height": "41", "experience": "No", "guardians": "Gala Dali"]
let player11: [String: String] = ["name": "Joe Kavalier", "height": "39", "experience": "No", "guardians": "Sam and Elaine Kavalier"]
let player12: [String: String] = ["name": "Ben Finkelstein", "height": "44", "experience": "No", "guardians": "Aaron and Jill Finkelstein"]
let player13: [String: String] = ["name": "Diego Soto", "height": "41", "experience": "Yes", "guardians": "Robin and Sarika Soto"]
let player14: [String: String] = ["name": "Chloe Alaska", "height": "47", "experience": "No", "guardians": "David and Jamie Alaska"]
let player15: [String: String] = ["name": "Arnold Willis", "height": "43", "experience": "No", "guardians": "Claire Willis"]
let player16: [String: String] = ["name": "Phillip Helm", "height": "44", "experience": "Yes", "guardians": "Thomas Helm and Evan Jones"]
let player17: [String: String] = ["name": "Les Clay", "height": "42", "experience": "Yes", "guardians": "Wynonna Brown"]
let player18: [String: String] = ["name": "Herschel Krustofski", "height": "45", "experience": "Yes", "guardians": "Hyman and Rachel Krustofski"]


// Build a Player array
let players  = [
                player1,
                player2,
                player3,
                player4,
                player5,
                player6,
                player7,
                player8,
                player9,
                player10,
                player11,
                player12,
                player13,
                player14,
                player15,
                player16,
                player17,
                player18
            ]

// Initialize Experienced and Inexperienced Arrays
var experiencedPlayers: [[String: String]] = []
var inexperiencedPlayers: [[String: String]] = []

// Initialize Teams
var teamSharks: [[String: String]] = []
var teamDragons: [[String: String]] = []
var teamRaptors: [[String: String]] = []



// Iterate over players Array
// For each player, see if they are experienced or not
// Push into appropriate arrays
for player in players {
    let isExperience = player["experience"]
    if (isExperience == "Yes") {
        experiencedPlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
    }
}


// Logic to build evenly matched teams
// Teams should be sorted into an even amount of experienced and un-experienced players

// Total number of players counter for each team
let totalPlayers = (players.count)/3

// Total number of experienced players per team
let totalExperiencPlayersPerTeam = (experiencedPlayers.count)/3
let totalInexperiencePlayerPerTeam = totalPlayers - totalExperiencPlayersPerTeam
// Initialize Counters for each team for the loop
var sharkCounter = 0
var dragonCounter = 0
var raptorCounter = 0

// Initialiae counter for experience players in a team
var experienceCounter = 0

// Insert Experienced Players into teams
for player in experiencedPlayers {
    if (sharkCounter < totalExperiencPlayersPerTeam) {
        teamSharks.append(player)
        sharkCounter = sharkCounter + 1
        experienceCounter = experienceCounter + 1
    } else if (dragonCounter < totalExperiencPlayersPerTeam) {
        teamDragons.append(player)
        dragonCounter = dragonCounter + 1
        experienceCounter = experienceCounter + 1
    } else if (raptorCounter < totalExperiencPlayersPerTeam) {
        teamRaptors.append(player)
        raptorCounter = raptorCounter + 1
        experienceCounter = experienceCounter + 1
    }
}

// Re-initialize team counters
sharkCounter = 0
dragonCounter = 0
raptorCounter = 0

// Add in Inexperienced Users
for player in inexperiencedPlayers {
    if (sharkCounter < totalInexperiencePlayerPerTeam) {
        teamSharks.append(player)
        sharkCounter = sharkCounter + 1
        experienceCounter = experienceCounter + 1
    } else if (dragonCounter < totalInexperiencePlayerPerTeam) {
        teamDragons.append(player)
        dragonCounter = dragonCounter + 1
        experienceCounter = experienceCounter + 1
    } else if (raptorCounter < totalInexperiencePlayerPerTeam) {
        teamRaptors.append(player)
        raptorCounter = raptorCounter + 1
        experienceCounter = experienceCounter + 1
    }
}

// Now send a letter to guardians

// Set up practice dates
let sharkFirstPractice = "March 17, 3 PM"
let dragonFirstPractice = "March 17, 1 PM"
let raptorFirstPractice = "March 18, 1 PM"

// Intialize letters collection
var letters: [String] = []

// Append Shark Letters to Player Letters
for player in teamSharks {
    let letter = "To \(player["guardians"]!), \(player["name"]!) has been assigned to the Sharks. The first practice will be \(sharkFirstPractice)."
    letters.append(letter)
}

// Append Dragons Letters to Player Letters
for player in teamDragons {
    let letter = "To \(player["guardians"]!), \(player["name"]!) has been assigned to the Sharks. The first practice will be \(dragonFirstPractice)."
    letters.append(letter)
}

// Append Raptors Letters to Player Letters
for player in teamRaptors {
    let letter = "To \(player["guardians"]!), \(player["name"]!) has been assigned to the Sharks. The first practice will be \(raptorFirstPractice)."
    letters.append(letter)
}

// Print out all the letters
for letter in letters {
    print(letter)
}



