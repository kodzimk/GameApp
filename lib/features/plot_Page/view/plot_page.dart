import 'package:flutter/material.dart';
import '../widgets/section.dart';
import '../widgets/bottom_app.dart';

// I KNOW THIS IS ILLEGAL BUT TRUST ME NEXT TIME I WILL WRITE BETTER CODE,SORRYYYYYYY

List<String> text = [
  "The story starts in medias res where Nathan Drake and his brother Samuel Drake are being chased through the seas during a storm by Shoreline mercenaries. They race towards an island that is of some importance to the brothers and the mercenaries."
  "As they all speed towards the island, a bigger Shoreline ship rams Nate and Sam's boat, damaging it and they drop depth charges in an attempt to kill Nate and Sam. The boat hits one of the depth charges and blows Nathan off the boat. Nathan resurfaces but dives back when a Shoreline boat passes by, narrowly missing the boat's turbines."
  "Before they could get close enough, the bigger Shoreline ship that Nate destroyed appears out of nowhere and rams Nate and Sam's boat, shipwrecking and separating the two. Nate passes out and a flashback starts and explains how did they get up to that point."
  "\n\n You met:\n Nathan Drake , Sam Drake , Shoreline"
];

List<String> text2 = [
   "After passing out from a collision at sea, Nathan Drake remembers the night his life changed. In the 1980s, when he was 12 years old, he was being scolded by a nun in the Saint Francis Boys' Home for starting a fight. The nun, impatient with Nathan's behavior, leaves him alone in his room while all the other boys have left for a Bible retreat. Moments later, he spots his older brother, Sam, calling out to him with a flashlight. Tired of his life in the orphanage, Nate sneaks out of his room through the window to meet up with Sam."
   "Sam shows Nate his new 500cc twin engine motorcycle, to which Nate quickly judges Sam that he stole it, but Sam dismisses it by saying he truthfully bought it. Nate immediately realizes Sam's intentions to go out of the country for a well-paying job and is disappointed when he explains that he will use the money to get him out of the orphanage, but not for a couple more years. Desperate, Nate tries to reason to Sam that he just wants to run away with him instead."
   "\n\n You met:\n Nun,Priest\n\n",

    "In a Panamanian prison, Nate is fighting Gustavo, another inmate. The fight has garnered the attention of the other inmates who are in support of Gustavo. As Nate gets the upper hand in the fight, Vargas, the prison's warden, and other officers break up the fight. Nate and Gustavo are separated and Nate is thrown into solitary."
    "He then reveals that he knows about Nate's, Sam's, and Rafe's true intentions for bribing their way into the prison. Vargas opens an envelope given to him by Rafe and reads the letter inside written by Joseph Burnes, Henry Avery's first mate, who was imprisoned in the highest cell of the prison tower Nate and Vargas are looking at. Nate dismisses Vargas' demands, climbs the tower, and enters Burnes' cell."
    "Nate, Sam, and Rafe run through the prison, escaping gunfire. A roof then collapses, causing Nate to be left behind, but is then joined by Sam as they are cornered by guards. Nate and Sam reunite with Rafe, who leads them to a boat left by Vargas outside the prison walls below the adjacent lighthouse. Nate and Rafe reach the prison walls, but before Sam can scale them, he is shot thrice and falls unconscious down into the prison below. Nate, who tried to help Sam up, becomes distraught over Sam's death."
    "\n\n You met:\n  Gustavo,Vargas, Henry Avery,Rafe\n\n",

    "Fifteen years after the Panama prison breakout (and right after the opening credits), Nathan Drake, now a diver for a salvage company, is swimming through a river trying to find a wreckage. His boss, Jameson, and the salvage boat follow closely behind. Swimming through the rocks and reeds, Nate finds a scraped piece of the wreckage and not long after, finds the wreck itself, a cargo trailer."
    "Nate goes on to chat with the other salvage workers and then Jameson. He then tells Nate that their salvage job on Thursday was given to another company. The two then check the cargo Nate had recovered and finds the copper wiring inside to be intact, a delight for Jameson. He invites Nate to barhopping with him which he turns down, instead wanting to do paperwork."
    "\n\n You met:\n Jameson\n\n",

    "He picks up a toy gun and happily replicates his past life by shooting at placed targets. He is called to dinner by his wife Elena Fisher, who is working on an article in the living room."
    "ate stops playing, goes downstairs and picks up the food Elena had cooked for them. Nate and Elena talk about their day and what they had accomplished as they eat dinner together. When Elena starts to talk about her article concerning the smog in Bangkok, Nate slowly drifts away from reality and remembers his past life as a treasure hunter and clearly misses the adventure."
    "Elena realizes that Jameson asked Nate about the Malaysia job and Nate dismisses Elena's push for him to take it who is implying that it's not as risky as their previous exploits. Elena suggests Nate to call up his old friend, Victor Sullivan, who Nate hasn't seen since their journey in Yemen two years prior but Nate angrily refuses, driving Elena away."
    "Later that night, as Nate was working overtime in his office, he was visited by Samuel Drake, who Nate believed had died in Panama prison fifteen years ago. Nate is overjoyed and embraces Sam and curiously asks how he survived. "
    "\n\n You met:\n Victor Sullivan\n\n",

    "Samuel Drake is in his prison cell doing sit-ups to pass the time. His cellmate, infamous drug lord Hector Alcázar, asks Sam about what he will do when he gets out of prison. Sam replies that he will find Captain Henry Avery's lost treasure. Alcázar then tells him that he has dreamed about finding Avery's lost treasure himself and implies that they are 'men of fortune' from a famous Avery quote. Sam dismisses this as heightened optimism but then he is alarmed by gunshots. Masked men armed with automatic rifles arrive in Sam and Alcázar's cell and they unlock the door. Alcázar invites Sam with him, asking him if he is 'ready to seek his fortune'. Sam accepts and they escape their cell."
    "Alcázar asks Sam how long it will take for him to find Avery's treasure and Sam says that it's hard to tell, since he hasn't started yet. Having believed that he will find the treasure, Alcázar orders the van to stop and Sam is dragged out of the van. Alcázar explains that he expects Sam to immediately find the treasure after he had broken him out of prison. He threatens Sam to find the treasure in three months or he will kill him. Sam reluctantly agrees and Alcázar gives him money and water, then points him to a town where he can find shelter. When Sam asks how he will collect the treasure, Alcázar assures him that he will."
    "Having tracked down his brother, he seeks Nate's help in finding the treasure. Sam gives him a new lead, a second St. Dismas cross, similar to what they found in Panama fifteen years ago but intact, being sold at a black market auction in Italy. Nate refuses and explains that he and Rafe had scoured the cathedral in search for the treasure for months and found nothing. He tries offering the services of his old friends but Sam insists that Nate accompany him. Making a hard decision, Nate calls Elena and lies to her that he took the Malaysia job, subsequently accepting Sam's offer."
    "\n\n You met:\n Alcazar\n",

    "Nathan Drake and his older brother Samuel Drake, wearing jumpsuits, are on stakeout on a cliff facing the Rossi estate in Italy, where their target, a 17th century cross that would lead to Captain Henry Avery's lost treasure, is being auctioned. Sam expresses concern over Nate inviting Victor Sullivan to work with them. "
    "Sully leads them to the wine cellar where Nate and Sam could sneak out to the power room. Unfortunately, the door was locked and Nate discreetly stole the card key from a waiter. Upon Nate and Sam entering the wine cellar, Sully encounters Nadine Ross, leader and owner of PMC Shoreline who offers him a drink. Nate and Sam navigate through the cellar and the following air vents and make their way onto the courtyard. "
    "Sully was chatting away with Nadine and Rafe joins them and reveals to Sully that he and Nadine have partnered. Sully begins to suspect that Rafe had rigged the auction in order to get the cross but Rafe publicly threatens him to back off. At this time, Nate is nearing the power room and has lost communication with Sam and Sully."
    "\n\nYou met:\n Nadine Ross\n\n",

    "After exiting the power room, Nathan Drake reestablishes contact with Sam and Sully and the trio attempt to meet up and escape the estate. Passing stealthily through estate guards on full alert, he reunites with Sam who gives him a gun. They are immediately separated when guards arrive and the sign Nate is hanging from breaks. "
    "After getting his bearings, Nate makes his way to the auction room through the rooftops. He spots the guests of the auction hastily racing out of the estate in panic and manages to get inside a study. On his way out, he crosses paths with Nadine Ross, who wants the cross Sam had stolen."
    "They then arrive at their hotel and break open the cross to find a parcel, drawn with grave markings and the Latin inscription Hodie mecum eris in paradiso. Nate and Sam conclude that they're looking for a grave specifically marked with the same markings in the parcel in the graveyard beside the St. Dismas cathedral. Sully, noticing Nate's obsession resurfacing, scolds Nate for lying to Elena about his intentions."
    "\n\n You met:\n Elena\n\n",

];

List<String> text3 = [

          "Nate and Sam fly to Scotland with Sully's help in search of Avery's grave. While making their way, Sam asks what happened between Nate and Rafe following Sam's presumed death. Nate explains that the both of them quickly grew tired with one another — Nate for his continued mourning, and Rafe's frustration regarding Avery's treasure. Sam agrees with Nate's assessment of Rafe being considerably ruthless."
    "Nate and Sam weave their way through the cemetery and past newly patrolling Shoreline mercenaries. The two then proceed to traverse the cliff faces, centuries-old beams, and rock slides until finally arriving at the cave seen in the window. Despite Shoreline patrolling just above and around the cave, Nate and Sam are the first ones inside."
    "The door slides open, revealing a chamber. Inside, there are skeletons hanging in cages, an ornate stone mural, and a sign not written by Avery. The plaque is inscribed with the words 'For those who prove worthy, PARADISE AWAITS and 'To those who prove false, BEHOLD YOUR GRIM FATE.' Thomas Tew, the Rhode Island pirate, created the sign and imprinted his sigil as signature."
    "\n\nYou met:\n Thomas Tew\n\n",

    "After observing and reading the mysterious poetic message written by pirate Thomas Tew, Nate and Sam continue through the icy caverns. They cross a rickety bridge and find a large chamber. Nate steps on a trigger, activating a mechanism that traps the two inside. Facing them is a system of stone wheels with three crosses that pertain to Jesus, Gestas, and Dismas, and a hole with a bucket in it. Nate finds a booby-trapped lever, with a skeleton caught in sharp spikes protruding from the area around the handle."
    "Nadine informs Rafe of the situation over her walkie-talkie and notices the marker over King's Bay. After Sam tricks Nadine into taking the jeweled cross, the chamber floor collapses, and Nate, Sam and Nadine make it to safety. A firefight ensues as Nate and Sam escape the chamber. Nate and Sam reach the cathedral proper where the fight intensifies. "
    "On the plane, they discuss that the treasure was never in Scotland, and that what they found leads them to King's Bay in Madagascar. Sully asks where in King's Bay they needed to go and Nate refers to the copper coin Sam had picked up. Upon further examining the coin, they find a volcano stamped into it, which refers to an extinct volcano in King's Bay. Sam asks Nate whether Avery was really recruiting and not trying to mislead them, to which Sully also expresses concern."
    "\n\nYou met:\n No one\n\n",

    "After Victor Sullivan acquires a 4x4 jeep, he, Nathan Drake, and Samuel Drake set out through the wilderness of Madagascar in search of Henry Avery's 400 million haul. Their destination: a dormant volcano. On the way, the trio discusses Avery's intentions. Due to the many tower ruins maintained by different pirate captains, Nate theorizes Avery was recruiting. They also argue whether the winch of the 4x4 was a necessary purchase. Later on, they encounter a Shoreline encampment on one of the tower complexes. This leads Sam to assume Rafe and Nadine have already found the treasure."
    "Upon discovering the tower's main chamber, where a map of the other eleven towers in King's Bay are marked, Sam discovers they weren't the first to arrive. Shoreline mercenaries drop in from the roof. Despite the overwhelming firepower, the team holds off the onslaught. After searching a dead mercenary, Sam confirms his suspicions: Shoreline had also marked the location of the twelve towers."
    "Sam expresses his frustration that they are against impossible odds, as Shoreline already has a head start. Nate investigates the coin they found beneath a Scottish cathedral, and recognizes a pirate sigil on the side opposite to the volcano. He pinpoints two possible towers on the map in the chamber that correspond to the faded pirate sigil on the coin. Sam suggests splitting up to explore the two towers at the same time. After further persuasion from Sully, Nate agrees."
    "\n\n You met:\n No one\n\n",

    "After Nate and Sully split up from Sam in order to narrow down their search from twelve towers to two, they drive to a Malagasy city. Weaving their way through the market, they come to a locked clock tower. Nate and Sully take an indirect route, scaling the outside columns until they climb in through an open window."
    "In the main entrance, Edward England's sigil is printed on the floor, giving them reason to believe they're on the right track. Past a set of doors at the top of a short flight of stairs is the clock tower proper. In the middle of the floor is a pedestal with a circular indentation. Nate takes the coin he and Sam grabbed from Scotland and places it in the indentation."
    "Nate grapples up to the staircase, and proceeds to traverse the still operational clock tower to ring the four bells in the order the statues appeared. After he rings the last bell, and all the locks have been opened, Avery's sigil appears on the floor. Unfortunately, this doesn't seem to do anything. As a last resort, thinking the largest bell in the tower might accomplish something, Nate scales higher until he reaches the belfry."
    "Nate notices that the sigils are slightly different, as they have partial star patterns. Nate turns the sigils until the pattern aligns, which opens one of the closed doors. It also moves the sigils around until three new ones are in place — Adam Baldrigde's, Anne Bonny's, and Christopher Condent's. Unlike Tew and Avery's, these do not have visible patterns on them."
    "Taking the stone rubbings out from his journal, Nate proceeds to solve a cipher in the map. Sam makes the connection between 'For God and liberty' and the founders' references to 'paradise.' He tells Sully they've found the location of Libertalia, a legendary pirate colony and the safe haven of up to thousands of pirates. They shared property and resources, and all of their wealth was kept in one common treasury building"
    "\n\n You met: Edward\n",

    "After renting a boat, Nathan Drake and his brother Samuel Drake speed through the Indian Ocean to a small archipelago that Nate had found in a series of clues from a puzzle earlier. Sam decides to celebrate the peaceful moment at sea but Nate is still recurring from breaking his marriage vows and his friendship. Sam tries to reassure him by claiming that bringing home Avery's treasure would change their minds."
    "Nate and Sam arrive at the archipelago and spots a watchtower of sorts on one of the two larger islands. They arrive at the top and upon pressing a button a series of arrows appear all throughout the island chain. Nate and Sam follow the arrows to a subterranean cave on the largest island. They discover lavish ruins with caved-in entrances, forcing them to climb around to find another way in. Once they enter the ruins, they find the place where the concept of Libertalia was conceived and created. They then enter another chamber where upon completion of a puzzle reveals the statues of the eleven pirates who founded Libertalia. Realizing that a statue of Avery was missing, they exit the chamber to find a humongous statue of Avery emerging from the other larger island."
    "They returned to their boat and travel to the other island and find a storm brewing. Once they arrive at the island containing Avery's statue, they notice that the statue is holding a spyglass but is not looking through it. Nate climbs the statue, looks through the spyglass and spots a bigger island out in the distance, presumably the location of Libertalia. Before Nate and Sam could set off, they spot Shoreline ships arriving, prompting them to immediately leave for the Libertalia in the midst of the brewing storm."
    "\n\n You met:\n No one\n\n",

    "After being ambushed at sea by the Shoreline boats, Nate wakes up and finds himself marooned on the island. He tries to call out for Sam, but he is nowhere to be seen. While facing the heavy storm, Nate treks through the island and continues to call out for his brother, still not receiving an answer. After climbing several walls, he eventually falls off a wall and lands into a small cave, where he rests until the storm settles."
    "After waking up again, he exits the cave and spots a flashing light in the distance. Figuring it must be Sam, he pulls out his light and flashes it back. He continues trekking the island, trying to reach Sam. As he climbs several walls, he discovers a piton attached to a corpse and uses it to scale the cliffs. After arming himself during an encounter with Shoreline, he finally finds Sam. Sam, intent on finding the treasure, insists on pressing on, but Nate is reluctant and tries to convince him that maybe what they are doing is not worth it, and that they should think of a less dangerous way to save Sam. However, Sam is determined to find the treasure and refuses to be swayed. The two continue to search the island before eventually reaching the paradise that is Libertalia."
    "\n\n You met:\n No one\n",

    "Henry Avery, one of the most infamous pirates in history (in Uncharted lore), used it when gathering other pirates to his cause. He pitched the idea of Libertalia — a hidden pirate utopia where they could all live free, away from kings and governments, keeping their massive stolen treasures. 'Paradise' sounded perfect. Freedom, wealth, brotherhood."
    "When all the pirates brought their treasures to Libertalia... Avery and Thomas Tew betrayed them all. They poisoned the other pirate captains, took all the gold for themselves, and tried to escape — 'paradise' was just bait for their greed."
    "In the game, Nate and Sam follow this trail of betrayal, clues, and dreams of fortune. They find the remnants of Libertalia — not a paradise, but a decaying ruin, wrecked by the same greed that built it.The deeper you go into the story, the more 'Join me in paradise' turns bitter — it’s a warning more than a promise."
    "\n\n You met:\n No one\n",
];

List<String> text4 = [
      "In this chapter of Uncharted 4, Nate and Sam finally step into Libertalia, the legendary pirate utopia they've been chasing. It’s a ghost city now, wild and overgrown, with massive pirate statues, crumbling mansions, and the remains of a dream long dead. At first, there’s this feeling of awe — it’s clear that Libertalia was once a true paradise built by pirates who wanted freedom from the world’s kings and rules."
      "But as they move deeper, they start noticing something darker. Streets are wrecked. There are signs of fighting. Documents and murals tell pieces of the story: the pirates who built this place — the founders — had set up a society where their treasures were supposed to be shared. Yet somewhere along the way, trust broke down."
      "Nate and Sam eventually uncover the truth: Henry Avery and Thomas Tew, two of the most powerful founders, turned on the others. They invited all the captains to a grand feast, poisoned them, and stole the entire treasure for themselves. Libertalia wasn’t destroyed by outside enemies — it crumbled from within, ruined by the same greed that had driven its creation."
      "\n\n You met: \n No one\n",

      "In a flashback, young Sam and Nathan Morgan arrive outside a mansion where their mother Cassandra Morgan's belongings are held. Nobody appears to be there. They climb the rooftops and enter the house through a window in the attic. Inside, they discover rooms with various kinds of historical artefacts and journals. When they find a polaroid camera, they take a picture of themselves wearing historical helmets."
      "In one room, they find their mother's journals. While they study them, the light is switched on and an old woman points a pistol at them. She has already called the police. Sam explains they were only looking for her mother's diaries. The woman, Evelyn, realizes that they are Cassandra Morgan's boys. She tells them that their mother was a great historian who worked for her and lets them have the diaries. When the police arrives, she wants to send them away. On the way to the door, however, she collapses and remains lying without signs of life."
      "Nate wants to help her, but Sam insists that there is nothing they can do for her and that they have to leave. Fleeing from the police, the boys arrive at Sam's motorcycle and drive away. After some time, they make a stop. Knowing that they cannot return to their former lives, they decide to drive away and try to complete their mother's work. Since her mother was convinced that Francis Drake had heirs, they take the new identity of Sam and Nathan Drake."
      "\n\n You met:\n Evelyn,Francis Drake\n",

      " After everything that’s happened — the fights, the lies, the discoveries — Nate and Elena are finally alone again, but it’s not easy between them. Nate had been lying to Elena about why he was on this adventure in the first place, and now all of that is out in the open. You can feel the tension between them; there’s hurt, but also love that hasn’t disappeared."
      "At the start of the chapter, Nate is badly injured from the fall they took earlier, and Elena helps him limp through the wreckage of the old pirate settlement. Along the way, they talk — sometimes quietly, sometimes awkwardly. Nate tries to explain why he hid the truth, and Elena, even though she’s clearly still hurt, stays by his side. It’s clear she’s frustrated with him, but she’s also not ready to give up on him."
      "By the end of the chapter, there’s this fragile sense of healing between them. They’re not totally okay yet, but they’re choosing to move forward together. It’s called 'For Better or Worse' for a reason — they’re deciding, even through all the chaos and pain, to stay partners. Both in the adventure and in their marriage."
      "\n\n You met:\n No one\n",

      "Nate and Elena arrive at New Devon's gate. After jumping across the gibbets and climbing atop the wall, Elena surveys the ruins with a pair of binoculars and notes that someone deliberately destroyed a dam to flood New Devon. They then deduce that the only intact house has to be Avery's. At Avery's front door, Sam is seen with both Rafe and Nadine, with Shoreline as backup."
      "While traversing through the dilapidated neighborhood crawling with Shoreline, Nate and Elena find evidence that the founders turned on each other. Edward England, out of retaliation for his home being ransacked and burnt on Christopher Condent's orders, killed Condent's brother. Richard Want's wife or female relative was hanged by Adam Baldridge, after Want supposedly murdered one of Baldridge's own. In the wake of the civil war, a letter addressed to Baldridge from Condent calls for a truce, with thinly-veiled threats of what would happen following a refusal."
      "In Thomas Tew's mansion, Nate and Elena stumble upon a tableau of human remains seated around a dining table. They realize the bodies are actually the pirate captains who founded Libertalia, dead from poison. Elena finds a letter penned by Tew, inviting all the captains to his mansion in order to settle their differences and 'unite under the banner of god and liberty.' Avery and Tew's bodies are missing. After sparking a revolt for stealing the treasure for themselves, the founders successfully repelled the colonists, but then had to deal with each other's greed. Avery and Tew, wanting the treasure for themselves, poisoned the other captains."
      "\n\n You met:\n Christopher Candidate, Richard Want\n",

      "Nate and Elena descend the stairs and pass through a metal gate which shuts behind them, barring any backtracking. They find themselves in a tunnel system Avery used for secretly bringing his treasure to his ship. In the tunnels, they find body parts of pirates killed by Avery, and mummies that explode if someone comes near them. Several death traps have to be overcome."
      "In the hand of a skeleton, Nate finds a key. When they come to a locked door, they hesitate to use the key because there might be a trap. When they eventually open the door, they are caught in a net. Nate succeeds in recovering a sword from a dead pirate, and he cuts the net. They run to the exit of the tunnel system, passing more exploding mummies."
      "\n\nYou met:\n No one\n",

      "After escaping the catacombs, Nate and Elena continue their search for Sam, coming across a ship graveyard in the process. Along their way, they find Sam being pursued and under fire from Shoreline and begin fighting their way past the mercenaries to reach him. They eventually reunite and continue fighting, but Nate is separated from the two and is forced to face more soldiers and a couple of artillery vehicles, before he comes across Sully, who hands him an RPG to destroy the second vehicle before pulling Nate to safety."
      "It is then that Sam and Elena arrive at the scene, the former of whom is finally able to talk with his brother. He attempts to apologize about having lied but Nate tells him to save it for later. They are about to head to Sully's seaplane to leave the island, which confuses Sam as he intended to continue searching for the treasure. Sully is against since they had only come to save him, but Sam, despite his gratitude, believes they have the advantage and asks if they know why Avery scuttled all the ships as he left, to which Elena answers that he was hellbent on keeping his treasure no matter the cost to the others. Sam then shows Nate Avery's map of the island, stating that his ship and the treasure are under a nearby mountain, and that it is where Rafe and Shoreline are heading. Determined to find the treasure, he tells Nate that the others do not understand, but Nate objects, stating that they have seen his obsession before and that he and Sam have nothing to prove."
      "After a moment of consideration, Sam silently concedes and the four continue on to Sully's seaplane, making their way through an abandoned town in the process. However, a faulty mechanism causes Sam to get separated from the group and gives him the leeway to continue his search for the treasure, much to Nate's frustration. They immediately give chase to Sam, but Nate gets separated from Sully and Elena. Sully objects to Nate going by himself, and Elena is upset that Nate has to take on this burden by himself, but Nate tells them to get the plane close to the mountain and to be ready for a quick getaway. After bidding a quick farewell and promising to bring Sam back no matter what, he leaves to go scale the mountain his brother was headed towards."
      "\n\n You met:\n No one\n",

      "After parting ways with Elena and Sully, Nate embarks on a journey to find Sam, who is determined to find Avery's treasure. Nate scales the mountain and traverses the inner caverns until he makes his way down to a lake where Avery's ship is."
      "While hidden, he eavesdrops on a conversation between Nadine and Knot. They have finished loading up a dinghy with some of the treasure when they notice Sam speeding off towards the ship in another dinghy that he had stolen. A frustrated Rafe, accompanied by Orca, storms up to the deck, prepared to set off to the ship using the other boat. Nadine, however, is indifferent and states that they are done. This bewilders Rafe, as their end goal is right in front of them. Nadine refuses to board on the ship due to all the traps Avery had set, along with the fact that most of Shoreline has died or deserted. Her decision to settle for the small haul irritates Rafe, which he tries to claim is the reason her men have left her. Still uninterested in the full reward, Nadine states that Sam can have the treasure if he can survive the ship's traps, and that he would be much more deserving of it than Rafe. He retaliates by slapping her across the face and continuing to demand that she join him, but is suddenly knocked to the ground by her and held at gunpoint. Before Nadine can make any further moves, she notices that the two lieutenants have their rifles trained on her and is forced to surrender. As he gets back up, Rafe reveals that he bought the mercenaries off so they would be loyal to him first."
      "\n\n You met:\n No one\n",

      "With Sam, Rafe and the remaining Shoreline soldiers headed towards Avery's ship, Nate follows suit. As Nate swims up to the ship, an explosion occurs, blowing off the bow and starboard side of the ship. Nate enters through the new hole and finds the bodies of the remaining Shoreline soldiers. More explosions are heard deeper within the ship. Nate follows the explosion and finds Libertalia's stolen treasure. However, he instead ponders if it was all worth it and continues on to save his brother."
      "Nate enters the hold of the ship where the smoke is coming from and the majority of the treasure is held. He encounters Rafe and both hold each other at gunpoint. He also spots Sam, unconscious and trapped under a fallen beam. Rafe claims that Sam caused the explosions and nearly got them all killed. In order to even the odds, Nadine steps in and relieves Nate of his gun. However, she also forces Rafe to hand over his gun and she pointed out that they saw a couple of skeletons and Nate realized that they were Avery and Tew, they killed each other and Nadine said that those who became obsessed with the treasure would have the same fate as the pirates, Nadine left and closed the door leaving Rafe furious."
      "Nate then tries to free Sam, but the two are unable to lift the beam. With seemingly no hope for his survival, Sam tells Nate that his wish was to find the treasure together with Nate, and he urges Nate to escape alone, saying that the ship is about to 'blow up'. Nate then fires a cannon in the hold, blowing a hole in the ship's floor and flooding it, allowing him and Sam leverage in order to move the beam. The two brothers swim out of the ship and out of the cave. Immediately after they escape, more explosions block the cave's mouth. Elena helps Nate and Sam out of the water, and she fires a flare to signal their location to Sully. The four leave Libertalia on Sully's plane."
      "\n\n You met:\n No one\n",
];

List<String> text5 = [
        "Nathan Drake and Elena Fisher's daughter, Cassie, plays her mother's copy of Crash Bandicoot. After beating the level and turning off the game, she wonders aloud where her parents are. The family dog, Vicky, accompanies Cassie as she searches the house."
      "The beach house, lived-in and full of various finds from expeditions, is empty save for the two of them. Cassie finds a letter in the kitchen, sent by Sully. In it, he tells Nate that he and Cassie's uncle Sam — who both have since retired and are currently in Havana, Cuba — have quit smoking and that they'll be visiting soon."
      "After thoroughly investigating and recognizing most of the relics, with a healthy dose of skepticism towards their validity, Cassie eventually stumbles upon her grandmother's journal. In it, she discovers Captain Henry Avery and the Gunsway heist; a photo of Nate and Sam as children; the Latin phrase 'Sic Parvis Magna' meaning 'greatness from small beginnings;' and a photo of Elena, Nate, and Sully posing with the treasure they found in the Amazon."
      "As he and Cassie walk out of the workshop, he begins to regale her with the full story of Sir Francis Drake and El Dorado.[1] Elena watches them go for a moment, before returning inside to place the photo back in the book alongside the one of Nate and Sam."
      "\n\n You met:\n Cassie\n",
];


List<String> prology = ["Prology"];
List<String> epilogue = ["Epilogue"];
List<String> first = ["The Lure of Adventure","Infernal Place","The Malaysia Job","A Normal Life","Hector Alcazar","Once a Thief","Lights Out"];
List<String> second = ["The Grave of Henry Avery","Those Who Prove Worthy","The Twelve Towers","Hidden in Plain Sight","At Sea","Marooned","Join Me in Paradise"];
List<String> third = ["The Thieves of Libertalia","The Brothers Drake","For Better or Worse","New Devon","Avery's Descent","No Escape","Brother's Keeper","A Thief's End"];
Color _darkenColor(Color color, double factor) {
  return HSLColor.fromColor(color)
      .withLightness(
          (HSLColor.fromColor(color).lightness - factor).clamp(0.0, 1.0))
      .toColor();
}

class PlotPage extends StatefulWidget {
  const PlotPage({super.key});
  @override
  State<PlotPage> createState() => _PlotPageState();
}

class _PlotPageState extends State<PlotPage> {
     final data = <SectionData>[
     SectionData(
      color: Color.fromARGB(255,43,39,36),
      colorOscuro: _darkenColor(Color.fromARGB(255,43,39,36), 0.1),
      count: 1,
      title: 'Prology',
      titles: prology,
      colorOfText: Colors.white,
      startIndex: 0,
      textForQuest: text,
     ),
      SectionData(
      color: Color.fromARGB(255,73,59,56),
      colorOscuro: _darkenColor(Color.fromARGB(255,73,59,56), 0.1),
      count: 7,
      title: 'The Lure of Adventure',
      titles: first,
      colorOfText: Colors.white,
      startIndex: 1,
      textForQuest: text2,
    ),
    SectionData(
      color: Color.fromARGB(255, 185,155,140),
      colorOscuro: _darkenColor(Color.fromARGB(255, 185,155,140), 0.1),
      count: 7,
      title: "The Grave of Henry Avery",
      titles: second,
      colorOfText: Colors.white,
      startIndex: 8,
      textForQuest: text3,
    ),
    SectionData(
      color: Color.fromARGB(255, 222,210,206),
      colorOscuro: _darkenColor(Color.fromARGB(255, 222,210,206), 0.1),
      count: 8,
      title: "The Thieves of Libertalia",
      titles: third,
      colorOfText: Color.fromARGB(255,73,59,56),
      startIndex: 15,
      textForQuest: text4,
    ),
    SectionData(
      color: Color.fromARGB(255, 242,240,246),
      colorOscuro: _darkenColor(Color.fromARGB(255, 242,240,246), 0.1),
      count: 1,
      title: "Epilogue",
      titles: epilogue,
      colorOfText: Color.fromARGB(255,0,0,0),
      startIndex: 23,
      textForQuest: text5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,125,108,104),
      bottomNavigationBar: BottomApp(),
        body: 
          ListView.separated(
            controller: ScrollController(),
            itemBuilder: (context, i) => Section(
                    data: data[i],
                  ),
            separatorBuilder: (context, i) => const SizedBox(
              height: 24.0,
            ),
            itemCount: data.length,
          ),
    );

  }
}
