VAR car_examined = false
VAR chose_phone = false
VAR chose_transaction_record = false
VAR theatre_identified = false
VAR chose_threatre = false
VAR lucky_strike_identified = false

VAR footage_seen = false
VAR car_asked = false
VAR belongings_asked = false

VAR lover_identified = false
VAR wife_dial_count = 0
VAR wife_furious = false
VAR rental_dial_count = 0
VAR wax_identified = false
VAR friendship_identified = false
VAR theatre_dial_count = 0
VAR lover_dial_count = 0

VAR cigarettes_matched = false
VAR friendship_matched = false
VAR wax_matched = false



I knew it was early when I opened my eyes.
My phone was buzzing, but I did not recognize the number.

*   [** Answer it **]
    -> call_from_sherry.early_bird    
*   [** Forget it **] 
    ...
    Later I heard the case was solved by another brilliant detective.
    Me? Couldn't feel better after a nice week's break.
    -> restart





=== call_from_sherry ===
= early_bird 
I answered the phone.
Woman: "Detective,"
*   ["Mmm?"]
    Sherry: "Sherry here, sorry to disturb you on your holiday." 
    (Right, I was on holiday. Why the hell did I pick this up?)
    Sherry: "A car crashed out of Hudson Bridge. Chief asked for you."
    **  ["Sorry, who are you again?"]
    --  Sherry(Investigator): "Sherry, sir. Investigator from Team Cherry."
    **  ["Err... okay."]
    --  Sherry(Investigator): "Right. Now if you could..."
    **  ["Wait, chief crashed out of the bridge?!"]
    --  Sherry(Investigator): "What? No! I mean, sorry."
        Sherry(Investigator): "There was an accident on Hudson Bridge. 
        Chief appointed you for this case."
    **  ["I see. Sorry about that. I am perfectly awake now."]
    --  Sherry(Investigator): "I certainly hope so.
        I am afraid we need you ASAP, detective."
    **  ["Right. Hudson Bridge, is it?"]
    --  Sherry(Investigator): "Yes."
    **  ["You got it Sherry, I'll be there in 30 minutes."]
        Sherry(Investigator): "Appreciated, Detective. 
        We are at the East end of the bridge. I will brief you on site."
-   *   [(Where's my jacket?)]
    ->  arrive_at_crime_scene.early





=== arrive_at_crime_scene ===
= early
It was the break of dawn when I arrived. 
The city was still sleeping.
The sun was rising along the distant horizon,
but I hardly felt any warmer.
*   [** Take picture **]
-   I took a picture with me (press Tab to see)
    # 1
    The team has been operating quietly in the darkness.
*   [\(Better get this done before the streets get crowded\)]
-   I approached one of the officers, showing my badge
*   ["An investigator Sherry called me in."]
-   Officer: "Yes Detective Chen, Sherry's on the river bank. This way." 
    The officer pulled up the cordon for me.
*   ["Appreciated, officer."]
    Man: "Chen!"
    I looked over my shoulder, Lieutenant was leaning on his car.
    **  [** Walk up to him **]
        I walked up to Lieutenant, he was putting a hotdog into his mouth.
        Lieutenant: "They brought you in for this? I thought you were on leave."
        *** ["What can I say, you might be the only one respecting that."]
        --- Lieutenant: "Eaten?"
            He passed me a hotdog wrapped in paper.
        *** ["Thanks. What brought you here? Since when you interested in homicide?"]
        --- Lieutenant: "Just checking in. I was on patrol."
            Lieutenant: "Does it look like a homicide to you?"
        *** ["I hope they did not call me up on an accident."]
        --- Lieutenant: "I don't know. Looks like some poor man drove into the river."
        *** ["I see. Where is he?"]
            Lieutenant: "Poor man's dead. 
            There's almost no water at this time of year, remember?"
            Me: "Damn... I better get going."
            Lieutenant: "Right, see you around."
        *** ["We'll see. First I need to talk to an Investigator Sherry."]
            Lieutenant: "Alright. Don't let me stop you."
    **  ["Lieutenant... I'll catch up with you later, duty calls!"]
        I waved to Lieutenant.
        He waved back.
    --  ***[** Walk down the bridge **]
        ->  Sherry_on_river_bank





=== Sherry_on_river_bank===
It was the last day of January. The river did not freeze
but it had shrank so much it exposed the riverbed. 
*   [** Examine closer **]
-   Dark mud was soaked with damp moist. 
    The Hudson River looked like a swamp, 
    with a ominous smell barely suppressed by the cold air.
    I could see a giant pit in the middle of the swamp.
*   [** Take picture **]
-   I took a picture with me (press Tab to see)
    # 2 
*   [\(That must be where the car crashed in\)]
    The pit looked like it was at least one hundred feet away from the breach on the bridge.
    **  [\(The car was at full speed when it crashed into the river\)]
        Woman: "Detective."
        I turned around, I believe I was met with Investigator Sherry.
        *** ["Sherry."]
        *** ["Investigator."]
        --- Sherry smiled politely. 
            She was wearing a red leather jacket and a pair of dark blue jeans. 
            She held on to a torch with one hand and a iPad mini with another.
            Sherry (Investigator): "Sherry Redfield, Investigator."
        *** ["Chen Shaorong, detective."]
        *** ["Let's cut to the point."]
        --- Sherry: "Right, detective. 
            A car was found this morning 4:30 am in the middle of the river.
            It was reported by a street cleaner."
        *** ["A street cleaner?"]
        *** ["Can I talk to the cleaner?"]
        --- Sherry (Investigator): "Yes, you can talk to her. 
            But I am not sure she could provide much help. 
            She claimed she saw lights blinking in the middle of the river and called the police."
        *** ["What did you find?"]
        --- Sherry (Investigator): "The driver was found dead in the car. 
            The victim was the only passenger and is identified as 
            Bill Jenkins, grocery owner, aged 32."
            ->  information
            
= information
*   ["Any witness?"]
    Sherry (Investigator): "No, we had asked around. 
    There was a wind storm last night and everyone stayed home."
    **  ["They should have at least heard something, if a car crashed out of the bridge?"]
        Sherry (Investigator): "If I may interrupt, sir, 
    **  ["Then how did we come to the conclusion of a car crash?"]
        Sherry (Investigator): "With all due respect, sir, 
    --  The happening of the event was caught by one of our civilian cameras."
        (...Of course, it is the 21st century)
    **  ["Can I see it?"]
    --  Sherry (Investigator): "For sure. A copy has been sent to your office as well."
        She pulled out the iPad and played the footage for me.
    **  [** Concentrate on the footage **]    
        
        ~ footage_seen = true
        
    --  The view was nice and clear. It was slightly past 1am. 
        Mr Jenkins' car was the only vehicle in sight. 
        On entering the bridge on the East side, Mr Jenkins accelerated. 
        About a hundred feet near the entrace, 
        he made a sudden turn to crash into the fences.
    **  [** Take picture **]
    --  I took a picture at the moment the car crashed.
        # 3
    **  [“Doesn't look like the car skidded or something."]
    --  Sherry (Investigator): "It doesn't. For one thing, there was no ice on the road."
    **  ["Hmm."]
    --  Sherry (Investigator): "It doesn't look like a traffic accident. 
        I guess that's why Chief appointed you, detective."
    **  "I need to know more."
    ->  information
    
*   ["Have forensics started working on it?"]
    Sherry (Investigator): "Yes. The time of death is estimated to be between 12am to 2am. 
    The cause of death was chest demage due to collision. 
    The tests have proved the victim was not drunk, 
    but we are still waiting for drug tests."
    **  [** Take picture **]
    --  I took a picture of the report.
        # 4
    **  ["The airbag didn't work?"]
    --  Sherry (Investigator): "...It did pop out. 
        Unfortunately it did not save Mr Jenkins' life."
    **  "What about..."
    ->  information

*   ["Where is the car?"]

    ~ car_asked = true
    
    Sherry (Investigator): "It was salvaged this morning.
    We would like you to examine it, before we sent to our technicians."
    **  ["I'll do it now."]
    ->  examine_car
    **  "Before that I would like to know..."
    ->  information
        
*   ["You said the victim was the only person in car?"]
    Sherry (Investigator): "Yes, sir. There were no other casualties.
    In fact, the car was almost... empty."
    **  ["What do you mean the car was empty?"]
    --  Sherry (Investigator): "You know, there were no personal belongings in the car."
    **  ["Was it not his car?"]
    --  Sherry (Investigator): "That remains to be seen.
        We have sent our request to the traffic department.
        I will update you once we found out the owner of that car."
    **  ["Okay. And if anyone went close to the car after it had crashed..."]
    --  Sherry (Investigator): "The camera would have caught him.
        Besides, he would leave traces on this swamp."
    **  "Fair enough. What about..."
    ->  information
    
*   ["Does Mr Jenkins have family?"]
    Sherry (Investigator): "Yes, we have informed his wife this morning.
    She's at the hospital identifying his body."
    **  ["She did not notice her husband went missing?"]
    **  ["When was she last night?"]
    --  Sherry (Investigator): "I am afraid you will have to ask her.
        I will let you talk to her when she's ready."
    **  "Okay, next I would like to know..."
    ->  information
    
*   ["Did you find anything on the victim?"]

    ~ belongings_asked = true
    
    Sherry (Investigator): "Personal belongings, yes.
    His wallet, phone and a ring of keys, 
    a few cigarettes and a lighter. They are kept in bags, Here."
    **  \** Examine wallet **
    --  Small notes, 2 bank cards, 1 traffic card, ID, 2 tickets,
        a piece of band aid and a piece of condom.
    **  \** Examine wallet closer **
    
        ~ theatre_identified = true 
        
        2 tickets are from Vienetta Threatre, 10pm to 12pm yesterday.
        *** [** Take picture **]
            I took a picture of the tickets.
            # 5
        ****    \** Examine phone **
    **  \** Examine phone **
    --  iPhone SE. Screen shattered.
    **  \** Examine phone closer **
        Cannot power on.
        ***   \** Examine ring of keys **
    **  \** Examine ring of keys **
    --  \(Curious what doors these open\)
    **  \** Examine lighter **
    --  \(Cheapest lighter you can find on the streets.\)
    **  \** Examine cigarette packet **
    --  \("Blue Mountains". Popular brand among workers.\)
        One cigarette seemed to have fallen out of the packet.
    **  \** Examine cigarette **
    --  Bent but dry.
    **  \** Examine cigarette closer **
    
        ~ lucky_strike_identified = true
        
        \("Lucky Strike". Expensive brand but I guess not so lucky after all.\)
        \(Wait, it's not the same as the rest of the cigarettes in the packet?)
        
        *** [** Take picture **]
            I took a picture of the cigarettes.
            # 6
            **** \** Talk to Sherry  **
    **  \** Talk to Sherry  **
    --  
    **  ["The first thing is to recover his phone."]
        
        ~ chose_phone = true
        
        Sherry (Investigator): "I see. I am afraid it will take some time.
        Repairing is one thing, unlocking it is another. 
        Meanwhile I can do one more thing for you."
        *** ["I need to have a look at his bank transaction records."]
        
            ~ chose_transaction_record = true
            
            Sherry (Investigator): "I see. The bank may request warrant, 
            but I will see what I can do."
        *** { theatre_identified }["I need to talk to Viennata Theatre."]
        
            ~   chose_threatre = true
            
            Sherry (Investigator): "I see. I will arrage it."
            
    **  ["The first thing is to have a look at his bank transaction records."]
    
        ~   chose_transaction_record = true
        
        Sherry (Investigator): "I see. The bank may request warrant,  
        but I will see what I can do. Meanwhile I can do one more thing for you."
        *** ["I need his phone recovered."]
            
            ~ chose_phone = true
            
            Sherry (Investigator): "I see. I am afraid it will take some time.
            Repairing is one thing, unlocking it is another. I will try."
        *** { theatre_identified } ["I need to talk to Viennata Theatre."]
        
            ~   chose_threatre = true
            
            Sherry (Investigator): "I see. I will arrage it."
            
    
    **  { theatre_identified }["The first thing is to let me talk to Viennata Theatre."]
    
        ~   chose_threatre = true
        
            Sherry (Investigator): "I see. I will arrage it. 
            Meanwhile I can do one more thing for you."
        *** ["I need to his phone recovered."]
            
            ~ chose_phone = true
            
            Sherry (Investigator): "I see. I am afraid it will take some time.
            Recovering is one thing, unlocking it is another. I will try."
        *** ["I need to have a look at his bank transaction records."]
        
            ~   chose_transaction_record = true
            
            Sherry (Investigator): "I see. The bank may request warrant tho.  
            I will see what I can do."
            
    --  **  ["Thanks, Sherry."]
        ->  information
        
+   [(SKIP) "I have known enough"]

    {
        - not (car_asked && belongings_asked):
            *   \** FINAL VERDICT **
                ->  verdict
            +   "Wait I need to know more"
            ->  information
        - not car_examined:
            Me: "Thank you Sherry, you have been helpful.
            If you don't mind, I would like to examine the car now."
            Sherry (Investigator): "Glad to be of help. I will leave you alone."
            *   ["I will let you know when I am done."]
                A red sedan sat on the river bank alone, 
                seemed to be forgotten by the other officers.
                It looked like normal from behind but at a closer look, 
                it tilted to one side.
                ->  examine_car
        - else:
            Sherry (Investigator): "Good to know. I will prepare the information you need and
            send to your office. Meanwhile let me know if you have other questions."
            *   ["Right. Thank you, Sherry. See you back in the office."]
            ->  back_to_office
    }

= examine_car   
*   \** Examine the front of the car **
    Red Chevrolet Impala. Right hand side of the car was bumped, the headlight broken.
    The hood was bent and open, the engine cold. 
    The windshield shattered but remained one piece.
    (Average car. Not beyond repair but it is no pleasure to look at.)
    **  [** Take picture **]
        I took a picture of the front.
        # 7
    ->  examine_car
    
*   \** Examine the driver's seat **
    Defalted airbag, no blood.
    The interior looked clean and in good condition, there were no accessories.
    **  [(So it is Mr Jenkins' new car)]
    **  [** Check mileage **]
        It read 9000 km.
        *** [(Mr Jenkins rented this car)]
    --  ->  examine_car
    
*   \** Examine trunk **
    Empty except for a thin blanket at the bottom.
    **  \** Remove the blanket **
        There was nothing there.
        *** [(It is empty)]
    **  [(It is empty)]
    --  ->  examine_car
    
*   [(I have seen enough)]

    ~   car_examined = true
    
    Me: "Sherry."
    ->  information





=== back_to_office ===
Sitting behind this desk always gives me calmness and strength to think,
although the world outside can often be cold and intimidating.
*   [(To some extent that's why people like me are needed, I guess)]
-   Door: "Knock knock"
*   ["Come in"]
    Sherry opened the door.
    Sherry (Investigator): "Detective, I have updated the information on the system. In short, 
    \-- the victim wasn't drunk nor on drug.
    { 
        -   chose_phone:
            \-- The phone needed more time to recover.
    }
    { 
        -   chose_transaction_record:
            \-- According to his bank statements,
            Mr Jenkins rented a car from Mark's Car Rental yesterday afternoon.
            He also bought 2 tickets from Vienetta Theatre last night, the show started 8:45pm.
        -   else:
            \--The car was confirmed by Traffic Department to belong to a Mark's Car Rental.
    }
    \-- I have contacted Vienetta Theatre for you. They agreed to talk."
-   *["Thank you, Sherry. I will take it from here."]
    -> dial_panel





=== dial_panel ===  
+   \** Call Mrs Jenkins **

    ~ wife_dial_count++
    
    {
        -   wife_furious:
            ...
            She did not pick up.
            I doubt she would ever will.
            ->dial_panel
        -   wife_dial_count == 1:
            ...
            The ringtone is kind of cheerful.
            She did not pick up.
            ->calling_wife.first_call
        -   wife_dial_count == 2:
            Woman: "..."
            Woman: "Hello?"
            *   ["Mrs Jenkins."]
                Mrs Jenkins (victim's wife): "Yes..? Who's this?"
                **  ["This is Chen, calling from NCPD. My deepest condolences."]
                    Mrs Jenkins (victim's wife): "I've.. identified the body."
                ->  calling_wife.later_calls
            *   ["This is Chen. I am a detective from NCPD."]
                Mrs Jenkins (victim's wife): "It this regarding..."
                **  ["I am afraid yes. My deepest condolences, Mrs Jenkins."]
                    Mrs Jenkins (victim's wife): "I've.. identified the body."
                ->  calling_wife.later_calls
        -   wife_dial_count > 2:
            Mrs Jenkins (victim's wife): "Is this you, detective?"
            ->  calling_wife.later_calls
    }
    
+   \** Call Mark's Car Rental  **

    ~ rental_dial_count++
    
    {
        -   rental_dial_count == 1:
            ->  calling_rental.first_call
            
        -   rental_dial_count == 2:
            ->  calling_rental.second_call
            
        -   else:
            ->  calling_rental.later_calls
    }
    
+   \** Call Theatre **
    
    ~ theatre_dial_count++
    
    {
        -   theatre_dial_count == 1:
            ->  calling_theatre.first_call
        -   else:
            ->  calling_theatre.later_calls
    }
    ->  dial_panel
    
+   {lover_identified} \** Call Catherine Fox **

    ~ lover_dial_count++
    {
        -   lover_dial_count == 1:
            ->calling_lover.first_call
        
        -   else:
            ->calling_lover.later_calls
    }
    ->  dial_panel
    
+   \** FINAL VERDICT **
    ++  "I would conclude this case."
        ->  verdict
    ++  ["I just changed my mind."]
        ->  dial_panel
 
 
 
 
    
=== calling_wife ===
=   first_call
    *   "I'll try again later"
        ->dial_panel

=   later_calls
    +   {wife_dial_count == 2}["We have a few service groups, you know, for trauma support."]
    +   {wife_dial_count > 2}["Yes. I hope you are alright, Mrs Jenkins"]
    -   Mrs Jenkins (victim's wife): "..Thanks"
    +   ["I hate to bring it up but I have a few more questions regarding this case."]
    -   Mrs Jenkins (victim's wife): "..For me?"
    +   ["Yes. That is, if you don't mind, Mrs Jenkins."]
    -   Mrs Jenkins (victim's wife): "Okay"
        -> questions
        
=   questions
    *   {lucky_strike_identified} ["Does Mr Jenkins smoke?"]
        Mrs Jenkins: "Yes, Bill smokes a lot."
        Mrs Jenkins: "..I knew it! I always warned him against smoking while driving..."
        **  ["Hmm, that may or may not be the case. Actually, what brand does he usually smoke?"]
        --  Mrs Jenkins: "Blue Mountains, why? He always grabs from our own grocery store."
        **  ["What about Lucky Strike?"]
        --  Mrs Jenkins: "Isn't that a luxury brand? I don't think we even had that in store."
        **  ["I see."]
        ->  questions
        
    *   {lover_identified} ["Does the name Catherine Fox ring a bell for you?"]
        Mrs Jenkins: "Who?"
        **  ["Catherine Fox."]
        --  Mrs Jenkins: "No, who's that?"
        **  ["I am afraid Mr Jenkins'd been having an affair with this lady."]
            (Emm, I really need her to be emotionally stable at this point.)
            *** [** Tell her **]
                
                ~   wife_furious = true
                
                Mrs Jenkins: "What in the fuck?"
                ****    ["Unfortunately that's the truth. Now if you could..."]
                ----    Mrs Jenkins: "What is it?"
                ****    [(...)]
                ----    Mrs Jenkins: "What is it you want me to do?"
                ****    ["Please calm down."]
                ----    "Doesn't privacy mean anything to you" was the last word I heard.
                        She had hang up, or she might have broke her phone, who knows.
                ****    ["I will have to move on."]
                        ->  dial_panel
            *** ["That's alright. Don't worry about it."]
            ->questions
        **  ["That's alright. Don't worry about it."]
        ->  questions
        
    *   ["Were you at home last night?"]
        Mrs Jenkins: "..I am sure this is just a routine question?"
        **  ["Exactly, I take it you were not with Mr Jenkins when he was driving?"]
        --  Mrs Jenkins: "No, I wasn't... Bill and I had dinner together,
            but he left home soon after."
        **  ["Did he mention where he was going?"]
            Mrs Jenkins: "No. But I think it was business."
        **  ["Wait, you weren't with him at the threatre?"]
            Mrs Jenkins: "Threatre? Was it his business?"
        --  Me: "Business, you were saying?"
            Mrs Jenkins: "Yeah. Bill, um, had been hard-working."
        **  ["As a grocery owner?"]
        **  ["Apart from running a grocery store?"]
        --  Mrs Jenkins: "He, um, had other businesses I think."
        **  ["What was it?"]
        --  Mrs Jenkins: "..I have no idea. He told me a few months back
            that he ran into a business partner and that's all."
        **  ["And who was that partner?"]
        --  Mrs Jenkins: "I really don't know."
            (Secret business, huh? But...)
        **  ["With all due respect Mrs Jenkins, were you not concerned?"]
        --  Mrs Jenkins: "About what? My husband's business? He'd been working late to bring
            food to our table.. I.. It's been really bad these days, our grocery business." 
        **  ["And you stayed home until morning? Did you try to contact him at any point?"]
        --  Mrs Jenkins: "I called Bill when the wind storm came.
            He did not answer but he texted me. That was uh, let me check, around 10pm."
        **  ["What did he say?"]
        --  Mrs Jenkins: "He said he would be late and that I could rest first."
        **  ["You were alone last night?"]
        --  Mrs Jenkins: "That's correct. I watched television until late 
            but I had Migraine so I went to bed early."
        **  ["Can you recall the shows you have watched last night?"]
        --  Mrs Jenkins: "What?"
        **  [(...)]
        --  Mrs Jenkins: "Antique Family? What's this for?"
            (The show ran from 8:30pm to 10:30pm)
        **  ["No problem. Thanks Mrs Jenkins. You have been helpful."]
        ->  questions
        
    *   ["Was it your car that Mr Jenkins was driving?"]
        Mrs Jenkins: "No, we do not have cars."
        **  ["We believe Mr Jenkins had rented it."]
        --  Mrs Jenkins: "Okay.."
            Mrs Jenkins: "Em, is it supposed to mean anything?"
        **  ["The car belongs to Mark's Car Rental. Does it sound familiar to you?"]
        --  Mrs Jenkins: "No, not really."
        **  [(...)]
        --  Mrs Jenkins: "Bill, uh, only got his license months ago."
        **  ["I see, can you drive?"]
        --  Mrs Jenkins: "No, I cannot. Uh, detective, could he have run into an accident?"
        **  ["I will find out, Mrs Jenkins."]
        ->  questions
        
    +   ["(SKIP)That's um, all I need to know for now."]
        Mrs Jenkins (victim's wife): "Okay"
        ->  dial_panel





=== calling_rental ===
=   first_call
    Man: "Mark's Car Rental. How can I help you?"
    *   ["Hi, am I speaking to the owner?"]
    -   I heard someone shouted on his side. 
        Man: "Sorry just a minute."
    *   ["Hello?"]
    -   The man probably attended to the person who shouted at him cos he started shouting too.
    *   [** Wait **]
        Man: "What was it?"
        The person in distance: "Where ... my wax ... last wednesday ..."
        Man: "What would I know about it? Just get a new box! I got business here."
        The man returned.
        Man: "Sorry about that, you were saying?"
        **  ["Got trouble?"]
            Man: "Nah, that was my colleague, sorry about that."
            *** ["Right, I was hoping to speak to the owner."]
            *** ["He couldn't find ... wax?"]
            
                ~ wax_identified = true
                
                Man: "Huh, he's probably the most forgetful technician ever born.
                Don't worry about him."
        **  ["I was hoping to speak to the owner."]
        --  Man: "Who am I speaking to?"
        **  ["This is Chen. Detective at NCPD."]
        --  Man: "Damn, I mean sorry, officer. I will pass it to Mark."
        **  ["Thanks"]
            -> owner_first_time
    *   [** Hang up **]
        ->  dial_panel

=   second_call
    Man: "Mark's Car Rental. May I help you?"
    (I recognized his voice)
    *   ["Yeah please, can I speak to the owner?"]
    -   Man: "And you are?"
    *   ["Detective Chen, from NCPD. I called once before."]
    -   Man: "Oh, detective. I will let Mark take the call."
    *   ["Wait."]
        Man: "Yes?"
        **  ["Can I speak to you for a moment?"]
        --  Man: "..Sure, but what for?"
        **  ["What's your name?"]
        --  Carlos (Technician): "Carlos."
        **  {wax_identified} ["Right, Carlos. Remember last time we talked about the missing wax?"]
            Carlos (Technician): "James's? Yeah."
            *** ["Did you manage to find it?"]
            --- Carlos (Technician): "No, we did not bother. We are not short of Fel Wax anyway."
            *** ["What exactly does the Gel Wax do anyway?"]
            --- Carlos (Technician): "The Fel Wax. We use it for molding.
                After heated it is like plasticine, can bend it into any shape."
            *** ["Meaning it melts with heat?"]
            --- Carlos (Technician): "You can say that, yeah. Why?"
            *** ["Cool, thanks. Can I speak to Mark now?"]
            ->  owner_second_time
        **  {!wax_identified}["Right, Carlos. Do you know Mark well?"]
            Carlos (Technician): "Yes, I have worked for him for 13 years.
            He's like a brother."
            *** ["Does the name Bill Jenkins sound familiar to you?"]
            --- Carlos (Technician): "Ah yeah, Mr Jenkins. Also a good friend of ours. What about him?"
            *** ["You are friends?"]
            --- Carlos (Technician): "Yeah, he always comes to us for car renting."
            
            ~ friendship_identified = true
            
            *** ["I see, now may I speak to Mark? Thanks."]
                ->  owner_second_time
    *   ["Thanks"]
        ->  owner_second_time
    ->  dial_panel

=   later_calls
    Mark: "Detective Chen."
    *   ["Got a few more quick questions."]
        ->  questions

=   owner_first_time
    I heard some whispers, indistinguishable. The man's probably introducing me.
    Man: "Hi, officer!"
    *   ["Hi, call me Chen. You must be Mark?"]
    -   Mark: "That's right. Mark Picasso, at your service."
    *   ["Do you know a Mr Bill Jenkins?"]
    -   Mark: "Yeah, he is one of our customers."
    *   ["You remeber every customer?"]
    -   Mark: "Not really, but I did handle every car rental case myself, so...
        Mr Jenkins always favors our serive than our competitors and I appreciated it."
    *   ["Mr Jenkins died of a car crash this morning."]
    -   Mark: "My word! ..."
        Mark: "Sorry officer ... For real?"
    *   ["Unfortunately yes. Did you notice anything when he rented your car yesterday?"]
    -   Mark: "Damn... God bless him..."
    *   ["Mark?"]
    -   Mark: "Sorry, let me check our system."
        Mark: "Bill Jenkins... Well, not much I am afraid. 
        He practically copied his application form from last time.
        The case was handled in under 10 minutes."
    *   ["Anything that he said or did, possibly?"]
    -   Mark: "Well, not really. He did not say much. 
        Come to think about it, he was a bit too quiet yesterday."
    *   ["I see. Thanks Mark. Let me know if you recalled anything from yesterday."]
    -   Mark: "Sure."
    ->  dial_panel

=   owner_second_time
    I could hear footsteps of going upstairs.
    Mark: "Detective Chen."
    *   ["Got a few quick questions."]
        ->  questions

= questions
    *   {lucky_strike_identified} ["Do you smoke?"]
        Mark: "I do. Cigarettes help me relax."
        **  ["What brand do you smoke?"]
        **  ["I feel the same way. Lucky Strike is my favourite."]
        --  Mark: "Lucky Strike! It is the best. 
            I have been smoking it since I inherited the business from my father."
        **  ["I see."]
        --  Mark: "..."
        **  ["A Lucky Strike cigarette was found on Mr Jenkins' body."]
        --  Mark: "..."
        **  ["Mark?"]
        --  Mark: "I guess not so lucky after all.. Haha.. sorry that was a bad joke."
        **  ["Does that belong to you?"]
        --  Mark: "Actually... I might have given it to him."
        **  ["You did? Under what circumstances?"]
        --  Mark: "Well, he was quiet that day and I thought I should cheer him up.
            I made a bad joke and it did not work. I think I offered him that cigarette after that."
        **  ["Hmm."]
        --  Mark: "It is really good stuff, you know. It would have cheered him up."
        **  ["I see."]
            
            ~ cigarettes_matched = true
            
        ->  questions
    *   {friendship_identified} ["I heard that you are good friends with Mr Bill Jenkins?"]
        Mark: "I try to make good friends with every customer."
        **  ["How so?"]
        --  Mark: "I hate to break it but, you know, sometimes you make the most money
            from the closest friends."
        **  ["That's businessman's way of thinking?"]
        --  Mark: "Or it could be just me."
        **  ["Your friendship with Mr Jenkins, has it ever gone beyond business?"]
        --  Mark: "Sorry what do you mean?"
        **  ["Like, do you only meet for car renting?"]
        --  Mark: "Mostly, yeah. I did invite some of our customers to events like
            auto shows or parties."
        **  ["When was the first time you met each other?"]
        --  Mark: "When? Probably a few months back. He looked like a reliable man."
        **  ["I see."]
            
        ~ friendship_matched = true
            
        ->  questions
    *   {wax_identified} ["Are you familiar with Fel Wax?"]
        Mark: "Fel Wax? Yeah, the guys use it for molding."
        **  ["Can you tell me more about it?"]
        --  Mark: "Uhh, basically it has great plasticity and is quite cheap.
            Sometimes we would like to test out particular shapes, then we will use it.
            It is like plasticine, you know, you can bend it into any shape."
        **  ["So it has no structural strength?"]
        --  Mark: "Err, what do you mean?"
        **  ["Like it falls apart easily?"]
        --  Mark: "Well, you would have to ask the technicians."
        **  ["Okay."]  
            
        ~ wax_matched = true
          
        ->  questions
    +   ["Recalled anything else about Mr Jenkins?"]
        Mark: "Uhh, I have asked around but nothing came up."
        ++  ["I see."]
            ->  questions
    +   ["(SKIP) Okay, that's all."]
        ->  dial_panel
    




=== calling_theatre ===
=   first_call
    Man: "Officer."
    *   ["Hi, Detective Chen here. And I am speaking to?"]
    -   Jack (Manager at Vienetta Theatre): "Jack, General Manager here at Vienetta Theatre."
    *   ["Hi, Jack. I believe Sherry had contacted you?"]
    -   Jack (Manager): "Yep, Miss Redfield has briefed me."
    *   ["Right, emm, I was wondering if..."]
    -   Jack (Manager): "Let's cut to the point, detective. 
        I have prepared the evidence for you."
    *   ["..? Evidence you say?"]
    -   Jack (Manager): "Yes, Mr Jenkins bought 2 tickets from us for last night's show.
        One under his own name, the other under the name of a Catherine Fox.
        He and his companion were both caught by our CCTV."
    *   ["Well, that's very helpful."]
    -   Jack (Manager): "The evidence should have been conveyed to you via Miss Redfield.
        Now if there's no futher queries, my request is that we quickly get this over with."
    *   ["Wait, what's in the rush?"]
    -   Jack (Manager): "With all due respect, sir, 
        we don't want to be associated to Mr Jenkins' death. My condolences, by the way."
    *   ["Aren't you ruthless?"]
    *   ["What are you scaring?"]
    -   Jack (Manager): "Believe me, sir. You learn to fear people's words in this business."
    *   [(...)]
    -   Jack (Manager): "Now if you don't mind, I must attend to other matters."
    *   [(Asshole)]
    -   I hang the phone.
        Sherry has updated Catherine Fox's number for me.
        
        ~ lover_identified = true
        
    ->  dial_panel
    
=   later_calls
    Jack (Manager at Vienetta Theatre): "Officer, I mean, detective. With all due respect,
    we do not have more information to offer."
    +   ["Okay, I was just checking in ."]
    -   Jack (Manager at Vienetta Theatre): "No! I mean, please, please understand. 
        People have started to talk about there was a murder in our theatre here!"
    +   ["What? That's not the case."]
    -   Jack (Manager): "No, it's not. And you know what it is? 
        It's called rumor! Please do not call again, we have a business to run!"
        He hang up.
    +   [(Well now that's called rude.)]
    ->  dial_panel
    

    
    
    
=== calling_lover ===

=   first_call
    Woman: "Hello?"
    *   ["Hi, am I speaking to Miss Catherine Fox?"]
    -   Catherine: "Yes. You are?"
    *   ["My name is Chen. I am calling from NCPD."]
    -   Catherine: "Oh. Let me guess, did you just freeze my bank account?"
    *   ["What?"]
    -   Catherine: "Go to hell."
    *   ["You went to Vienetta Theatre with Mr Bill Jenkins last night."]
    -   Catherine: "What?"
        Catherine: "Shit...For real?"
        (Well, I should think of a better way to introduce myself.)
        Catherine: "Sorry officer. I thought you were one of those scammers."
    *   ["No prob."]
    -   \(Where was I?\)
    *   ["Miss Fox, I would appreciate it if you could spare a few minutes?"]
    -   Catherine: "Okay... What do you want?"
    *   ["You know Mr Bill Jenkins, don't you?"]
    -   Catherine: "..."
    *   ["Bill. Jenkins."]
    -   Catherine: "Yes, he is a friend. Did he give you my number?"
    *   ["No he didn't. How long have you known him?"]
    -   Catherine: "I can't remember, two months?"
    *   ["Two months and you went to the theatre together."]
    -   Catherine: "What, it was a musical."
    *   ["Mr Jenkins is married."]
    -   Catherine: "It was merely a musical."
    *   ["Mr Jenkins is dead."]
    -   Catherine: "..."
        Catherine: "What... what was that?"
    *   ["Mr Jenkins was found dead this morning."]
    -   Catherine: "..."
    *   ["And he was with you last night."]
    -   Catherine: "What? No, no no no. You got it all wrong!
        We were.. In a relationship. I wouldn't have killed him!"
    ->  questions

=   later_calls
    Catherine: "Hello?"
    *   ["Chen here."]
    -   Catherine: "I have told you what I had to tell you."
    ->  questions

=   questions
    *   ["What had happened last night?"]
        Catherine: "..."
        **  ["What had happened..."]
        --  Catherine: "We met at the theatre. We watched the musical together."
        **  ["Then you left the theatre."]
        --  Catherine: "He walked me home. We kissed goodbye. 
            He went on the bus and I have not seen him since."
        **  ["Did anyone see you?"]
        --  Catherine: "Sure. The theatre was full of people."
        **  ["Did anyone see you at your place?"]
        --  Catherine: "No, it was late."
        **  ["When was it?"]
        --  Catherine: "..."
            Catherine: "Around 11:30PM. I remember because he almost missed the last bus home."
        **  ["Mr Jenkins got on the last bus back home?"]
        --  Catherine: "Yes, and I have not seen him since."
        **  ["You were lying."]
        --  Catherine: "I don't understand."
        **  ["I am going to ask you one last time, what had happened last night?"]
        --  Catherine: "I have told you what I remembered."
        **  ["Mr Jenkins died driving a car."]
        --  Catherine: "..."
        **  ["You did not know it, because you did not see him getting in his car."]
        --  Catherine: "..."
        **  ["Where are you, Miss Fox?"]
        --  Catherine: "Sorry, I did not mean to..."
        **  ["Where are you?"]
        --  Catherine: "We parted ways in front of the theatre..."
        **  ["I will have to have you in for interrogation."]
        --  Catherine: "Please! I will tell it now. 
            You can have me in but it is going to be the same story!"
        **  ["Try"]
        --  Catherine: "We parted ways in front of the theatre.
            We had a quarrel. But it is not like what you think!
            He said he would break up with me, I wanted him to stay."
        **  ["What did he say?"]
        --  Catherine: "Him? He said we were a mistake and he wanted to go back to his life!"
        **  ["And what did you say?"]
        --  Catherine: "Fuck him. Fuck him! He deserve to be dead but I did not kill him!"
        **  ["What happened next?"]
        --  Catherine: "I walked away."
        **  ["You just walked away?"]
        --  Catherine: "There's people watching and he wouldn't say anything.
            He just pulled out a cigarette like nothing had happened."
        **  ["What brand did he smoke?"]
        --  Catherine: "What brand? Cheap ones."
        **  ["What brand do you smoke? Do you smoke at all?"]
        --  Catherine: "99's Eve, why?"
            (Doesn't tell me a lot.)
        **  ["What happened next?"]
        --  Catherine: "Nothing. I walked my own way home."
        **  ["Did anyone see you back at home?"]
        --  Catherine: "...No."
        **  ["Well in that case..."]
        --  Catherine: "I did not kill him, officer. I did not."
        **  ["I hope so, Miss Fox. I do."]
        ->  questions
    *   ["How did you come to know each other?"]
        Catherine: "..."
        
        ~   friendship_identified = true
        
        **  ["Hello?"]
        --  Catherine: "Through a mutual friend."
        **  ["Identify."]
        --  Catherine: "He had nothing to do with all of this."
        **  ["Stop thinking about others. You are the one being suspected now."]
        --  Catherine: "..Name is Mark Picasso."
        **  [(Why does it sound familiar)]
        --  Catherine: "He runs a auto repair company on the other side of town."
        **  ["Wait, Mark's Car Rental?"]
        --  Catherine: "Ah, yes. He turned to car rental business in recent years."
        **  ["This Mark Picasso introduced you to each other?"]
        --  Catherine: "Yes, we met each other at a party."
        ->  questions
    +   ["That's all for now. Please remain contactable in the next few days."]
        Catherine: "...I did not kill him."
        ++  ["Please remain contactable."]
        ->  dial_panel




=== verdict ===
+   ["This is an accident."]
    ...
    The case was later directed to the traffic department.
    I have not heard of it since. God bless him.
    ->  restart
    
+   {footage_seen} ["Unfortunatedly this is a suicide."]
    It looked more like a suicide act according to the footage.
    ...
    Later the case was concluded as a suicide, 
    although rumor had it there was no decisive proof presented.
    I should be careful not to stress myself out at work...
    ->  restart
    
+   {wife_dial_count > 0} ["Mrs Jenkins is guilty."]
    Mrs Jenkins behaved really suspicious and I arrested her for interrogation.
    I will be there when she spit out the truth about Mr Jenkins' death.
    ...
    ->  restart
    
+   {rental_dial_count > 0} ["Mark Picasso is guilty."]
    Mark Picasso was arrested for interrogation.
    I will be there when he spit out the truth about Mr Jenkins' death.
    ...
    {
        -   friendship_matched && cigarettes_matched && wax_matched:
            As it turned out, Mark was not only a close friend to Mr Jenkins,
            but also his secret business partner. That business was of course, illegal.
            On the day Mr Jenkins died, he wanted to part ways with Mark,
            "because he had enough and only wanted to live his life."
            Mark took down a piece of hardware on the car rented to Mr Jenkins,
            and replaced it with a piece of Fel Wax. That piece of Fel Wax did not hold 
            under the heat of a driving vehicle and melted away. That was when Mr Jenkins'
            car lost control and drove into the river.
    }
    ->  restart

+   {lover_identified} ["Catherine Fox is guilty."]
    Catherine was arrested immediately for interrogation.
    After all, she was the last person Mr Jenkins had met.
    I will be there when she spit out the truth about Mr Jenkins' death.
    ...
    ->  restart




    
=== restart ===
Now I could live with that,
or I could
->END








