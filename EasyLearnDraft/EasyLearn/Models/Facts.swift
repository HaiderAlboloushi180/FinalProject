//
//  Facts.swift
//  EasyLearn
//
//  Created by Haider Alboloushi on 7/16/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import Foundation
import GameKit

struct Fact{
    let facts = [
        "Some tornadoes can be faster than Formula One race cars!",
                 "There are 2,000 thunderstorms on Earth every minute.",
                 "The wind is silent until it blows against something.",
                 "The fastest recorded raindrop was 18 mph!",
                 "Lightning can, in fact, strike twice.",
                 "Clouds look white because they are reflecting sunlight from above them.",
                 "Rain contains vitamin B12.",
                 "A bolt of lightning is five times hotter than the sun.",
                 "Regardless of their size, naval tradition declares submarines be called “boats” rather than ships.",
                 "Hedy Lamar was a famous Hollywood film actress who also invented what became modern day Wi-Fi.",
                 "Walt Disney started sketching regularly when he was just four years old.",
                 "Abraham Lincoln lost five separate elections before he became president of the U.S.",
                 "Abraham Lincoln was a professional wrestler long before he became the 16th President of the United States.",
                 "The world’s longest French fry is 34-inches long.",
                 "On the South Atlantic island of Tristan da Cunha, potatoes were once used as currency.",
                 "Ice cream was once called cream ice.",
                 "Pound cake is so called because the recipes once called for a pound of butter, a pound of sugar, a pound of eggs and a pound of flour.",
                 "Peanuts aren't nuts!",
                 "Carrots weren't always orange: they were once exclusively purple.",
                 "Apples float because they are one quarter air!",
                 "The moon is very hot (224 degrees Fahrenheit, average) during the day but very cold (-243 degrees average) at night.",
                 "One million Earths could fit inside the sun!",
                 "Neptune’s days are 16 hours long.",
                 "It takes eight minutes and 19 seconds for light to travel from the sun to Earth.",
                 "The footprints on the moon will be there for 100 million years.",
                 "Sound does not carry in space.",
                 "The Earth's core is as hot as the surface of the sun.",
                 "The biggest fossil of a spider was found in China. It is one-inch long and 165 million years old.",
                 "Nearly 10 percent of all of a cat's bones are in its tail.",
                 "Shrimps hearts are in their heads.",
                 "An ostrich's eye is bigger than its brain.",
                 "The nose can detect a trillion smells!",
                 "One quarter of your bones are in your feet.",
                 "Human teeth are as strong as shark teeth!",
                 "Your blood is as salty as the ocean.",
                 "Your nose and ears never stop growing."
    ]
    
    func randomFact() -> String {
        let index = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
        return facts[index]
    }
}

