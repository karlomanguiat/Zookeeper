//
//  ContentView.swift
//  Zookeeper
//
//  Created by Glenn Karlo Manguiat on 9/18/24.
//

import SwiftUI

struct Animal: Identifiable {
    var id = UUID()
    var animalName : String
}

struct AnimalGroup: Identifiable {
    var id = UUID()
    var groupName : String
    var animals : [Animal]
}

let animalGroups = [
    AnimalGroup(groupName: "Pets", animals: [
        Animal(animalName: "Dog"),
        Animal(animalName: "Cat"),
        Animal(animalName: "Parrot"),
        Animal(animalName: "Mouse")
    ]),
    AnimalGroup(groupName: "Farm", animals: [
        Animal(animalName: "Cow"),
        Animal(animalName: "Horse"),
        Animal(animalName: "Goat"),
        Animal(animalName: "Sheep"),
    ]),
    AnimalGroup(groupName: "Critters", animals: [
        Animal(animalName: "Firefly"),
        Animal(animalName: "Spider"),
        Animal(animalName: "Ant"),
        Animal(animalName: "Squirrel"),
    ])
]


struct ContentView: View {
    var body: some View {
        List {
            ForEach(animalGroups) {
                animalGroup in Section(header: Text(animalGroup.groupName)) {
                    ForEach(animalGroup.animals) { animal in
                        Text(animal.animalName)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
