///scr_dialouge(obj_id,difficulty)
var object = argument0;
var difficulty = argument1;
randomize();
questions = 0;
isQAsked = false;
possibleChange[1,0] = "install automatic lighting"
possibleChange[1,1] = "installing automatic lighting"
possibleChange[2,0] = "install solar panels"
possibleChange[2,1] = "installing solar panels"
possibleChange[3,0] = "buy all our paper in bulk"
possibleChange[3,1] = "buying all our paper in bulk"
possibleChange[4,0] = "recycle used toilet paper"
possibleChange[4,1] = "recycling used toilet paper"
possibleChange[5,0] = "repair appliances yearly"
possibleChange[5,1] = "repairing appliances yearly"
possibleChange[6,0] = "replace our microwave with a camp fire"
possibleChange[6,1] = "replacing our microwave with a camp fire"
possibleChange[7,0] = "change something comically"
possibleChange[7,1] = "changeing something comically"
possibleChange[8,0] = "change something comically2"
possibleChange[8,1] = "changeing something comically2"
whichChange = irandom_range(0,1)
brand[1] = "Lexicom"
brand[2] = "Elecro Light"
brand[3] = "The Helpful Fokes"
brand[4] = "Compcon L.L.C."
brand[5] = "D4-ester"
brand[6] = "Rad Iron Milling"
brandChosen = irandom_range(1,4)
brand[0] = brand[brandChosen]
for(i = brandChosen; i <= 5; i++)
{
    brand[i] = brand[i+1]  
}



topicNum = irandom_range(1,4) //decide topic

if(topicNum = 1)
{
   
    
    topic[0] = "energy";
    topic[1] = "paper"   
    topic[2] = "appliances"
    topic[3] = "comical thing"
    
}
if(topicNum = 2){
    topic[0] = "paper"
    topic[1] = "energy";
    topic[2] = "appliances"
    topic[3] = "comical thing"
}
if(topicNum = 3){
    topic[0] = "appliances"
    topic[1] = "paper"
    topic[2] = "energy";
    topic[3] = "comical thing"
}
if(topicNum = 4){
    topic[0] = "comical thing"
    topic[1] = "paper"
    topic[2] = "energy";
    topic[3] = "appliances"
}

possibleChange[0,0] = possibleChange[(2*topicNum) - 1, 0]
possibleChange[0,1] = possibleChange[(2*topicNum) - 1, 1]
for(i =(2*topicNum) - 1; i < 7;i++)
{
    possibleChange[i,0] = possibleChange[i+1,0] 
    possibleChange[i,1] = possibleChange[i+1,1] 
}

//decide percent

percent[0] = irandom_range(1,999)/10
percent[1] = percent[0] + abs(irandom_range(10,50) - difficulty) + 1
percent[2] = percent[0] + abs(irandom_range(10,50) - difficulty) + 1
percent[3] = percent[0] + abs(irandom_range(10,50) - difficulty) + 1

quarter[0,0] = irandom_range(1,4)

if(quarter[0,0] == 1)
{
    quarter[0,1] = "1st"
    quarter[1,1] = "2nd"
    quarter[2,1] = "3rd"
    quarter[3,1] = "4th"
}
if(quarter[0,0] == 2)
{
    quarter[0,1] = "2nd"
    quarter[1,1] = "1st"
    quarter[2,1] = "3rd"
    quarter[3,1] = "4th"
}
if(quarter[0,0] == 3)
{
    quarter[0,1] = "3rd"
    quarter[1,1] = "1st"
    quarter[2,1] = "2nd"
    quarter[3,1] = "4th"
}
if(quarter[0,0] == 4)
{
    quarter[0,1] = "4th"
    quarter[1,1] = "1st"
    quarter[2,1] = "2nd"
    quarter[3,1] = "3rd"
}

dollars[0] = irandom_range(9,9999)
dollars[1] = dollars[0] + abs(irandom_range(30,300) - 5*difficulty) + 1
dollars[2] = dollars[0] + abs(irandom_range(30,300) - 5*difficulty) + 1
dollars[3] = dollars[0] + abs(irandom_range(30,300) - 5*difficulty) + 1

introNum = irandom_range(1,4)
if(introNum == 1)
{
    text[0] = "I’ve come up here today to present my proposal for a restructured " + topic[0] + " model to free up funds for company growth.";
}
if(introNum == 2)
{
    text[0] = topic[0] + " , We all need it, It’s part of everyday life in the office and it’s what's put us all here today. It’s practically in the air we breathe and In the microwavable noodle cups we eat.";
}
if(introNum == 3)
{
    text[0] = "Synergy, efficiency, teamwork, these are the ideals that power a business and they need to be reflected in how we use " + topic[0];
}
if(introNum == 4)
{
    text[0] = topic[0] +", " + topic[0] + ", " + topic[0] + ", What would a business be with " + topic[0] + ", " +topic[0] + " is in the very foundation of this building."
}

if(irandom_range(1,2) + difficulty > 2)                     //Intro questions
{
    
        text[1] = "*What's your take Johnson?"
        for(i = 0; i < 4 ;i++)
        {
            i4 = irandom_range(1,4)
            if(i4==1)
            {
                text[1] = text[1] + "#I think " + topic[i] + " is very important." 
            }
            if(i4==2)
            {
                text[1] = text[1] + "#I think it’s good we spend time talking about " + topic[i] + "."
            }
            if(i4==3)
            {
                text[1] = text[1] + "#" + topic[i] + " is too often ignored in our company." 
            }
            if(i4==4)
            {
                text[1] = text[1] + "#About time someone takes care of " + topic[i] + "." 
            }
             
        }
        questions++
        isQAsked = true;
}




middleNum = irandom_range(1,4)           //Middle text

if(middleNum == 1)
{
    text[(questions + 1)] = "As you can see by this graph our " + topic[0] + " spending has been slowly climbing throughout this quarter and if we continue on this trajectory we will be spending " + string(percent[0]) + " of our " + string(quarter[0,1]) + " quarter profits on providing " + topic[0] + "to the office."
}
if(middleNum == 2)
{
    text[1 + questions] = "We funnel so much money into " + topic[0] + " in quarter " + string(quarter[0,0]) + " alone we spent " + string(percent[0]) + "% of joe's retirement fund just on " + topic[0];
}
if(middleNum == 3)
{
    text[1 + questions] = "While everyone around here just consumes and consumes (Im looking at you Jessica, coffee creamer is for coffee you can't just drink it like milk) it’s important to be aware of how much we are spending on things like " + topic[0] + " I bet no one around here realizes that we spend " + string(percent[0]) + " percent of quarter " + string(quarter[0,0]) + " funds on " + topic[0];
}
if(middleNum == 4)
{
    text[1 + questions] = "There is no reason why we should be spending this much on " + topic[0] + " why with the " + string(percent[0]) + " percent we spent in " + string(quarter[0,1]) + " quarter, we could have replaced every single one of you pathetic underlings with robots that work twice as fast!"
}


if(irandom_range(1,4) + difficulty > 4)                     //Middle Questions
{
    if((irandom_range(1,100) + difficulty) > 100)
    {
        introFrameworkAnswers[1] = "#I think the graph illustrates the situation perfectly"
        introFrameworkAnswers[2] = "#I don’t see why we can just spend joe's money on " + topic[0] + "."
        introFrameworkAnswers[3] = "#Damn it Jessica, That was my caramel creamer."
        introFrameworkAnswers[4] = "#I’d like to see a robot put up with your presentation"
        if(introNum == 1)
        {
            introFrameworkAnswers[0] = introFrameworkAnswers[1]
            introFrameworkAnswers[1] = introFrameworkAnswers[2]
            introFrameworkAnswers[2] = introFrameworkAnswers[3]
            introFrameworkAnswers[3] = introFrameworkAnswers[4]
        }
        if(introNum == 2)
        {
            introFrameworkAnswers[0] = introFrameworkAnswers[2]
            introFrameworkAnswers[1] = introFrameworkAnswers[1]
            introFrameworkAnswers[2] = introFrameworkAnswers[3]
            introFrameworkAnswers[3] = introFrameworkAnswers[4]
        
        }
        if(introNum == 3)
        {
            introFrameworkAnswers[0] = introFrameworkAnswers[3]
            introFrameworkAnswers[1] = introFrameworkAnswers[2]
            introFrameworkAnswers[2] = introFrameworkAnswers[1]
            introFrameworkAnswers[3] = introFrameworkAnswers[4]
        }
        if(introNum == 4)
        {
            introFrameworkAnswers[0] = introFrameworkAnswers[4]
            introFrameworkAnswers[1] = introFrameworkAnswers[2]
            introFrameworkAnswers[2] = introFrameworkAnswers[1]
            introFrameworkAnswers[3] = introFrameworkAnswers[3]
        }
        text[1] = "*Impressions?" +introFrameWorkAnswers[0]+introFrameworkAnswers[1]+introFrameWorkAnswers[2]+introFrameworkAnswers[3]     
        questions++  
        isQAsked = true;  
    }
    else
    { 
     
        text[2+questions] = "*What's your take Johnson?"
        for(i = 0; i < 4; i++)
        {
            i4 = irandom_range(1,4)
            if(i4==1)
            {
                text[2 + questions] += "#" + string(percent[i]) + " percent is something we need to take care of"
            }
            if(i4==2)
            {
                text[2 + questions] += "#Is " + string(percent[i]) +" really that critical?"
            }
            if(i4==3)
            {
                text[2 + questions] += "#" + string(quarter[i,1]) + " quarter is gonna be an important one"
            }
            if(i4==4)
            {
                text[2 + questions] += "#" + string(quarter[i,1]) + " quarter is to far away to really tell."
            }  
        }
    questions++
    isQAsked = true;
    }
    if((irandom_range(1,8)+ difficulty) >8 )//dificult questions
    {
        text[2+questions] = "*What's your take Johnson?"
        for(i = 0; i < 4; i++)
        {
            i4 = irandom_range(1,2)
            if(i4==1)
            {
                text[2 + questions] += "#" + string(quarter[i,1]) + " quarter profits will be high so " + string(percent[i]) + " percent is a lot of money."

            }
            if(i4==2)
            {
                text[2 + questions] += "#"  + string(percent[i]) + " percent in " + string(quarter[i,1]) + " quarter is manageable."
            }
            
        }
        questions++
        isQAsked = true;
    }

}



conclusionNum = irandom_range(1,4) //Conclusion

if(conclusionNum == 1)
{
    text[2 + questions]  = "I propose that we can cut " + topic[1] + " spending in half by making a few slight changes.  We can " + possibleChange[0,0] +". I’ve compiled price quotes on a few different brands and " + brand[0] + "would only be " + string(dollars[0]) + "$"
}
if(conclusionNum == 2)
{
    text[2 + questions]  = "Until we " + possibleChange[0,0] + " we don’t have a chance in this economy and this buisness is going down and you’ll all lose your jobs unless we decide to adress " + topic[0] + " now we’ll all broke faster than you can say massive layoffs, and to think it can all be avioded by buying from "+ brand[0] + "at the low low cost of " + string(dollars[0]) + "$"
}
if(conclusionNum == 3)
{
    text[2 + questions]  = "Uh, so thats about it . . . ummm I mean if you guys really care we could " + possibleChange[0,0] + ". . . .. I don’t really wanna choose for anyone but " + brand[0] + " is only " + string(dollars[0]) + " so . . . Um yeah . . . . that’s it . . . " + topic[0] + " huh ... who would've thought..."
}
if(conclusionNum ==4)
{
    text[2 + questions]  = "In conclusion in order to maximize our efficiency as a company we need to cut our spending on " + topic[0] + " and with the optimal practice of " + possibleChange[0,0] + " provided by " + brand[0] + " at a minimized expense of " + string(dollars[0]) + " dollars." 
}


if(irandom_range(1,4) + difficulty > 4 || !isQAsked)                     //COnclusion Questions
{
    text[3+questions] = "*What's your take Johnson?"
    for(i = 0; i < 4; i++)
    {
        i4 = irandom_range(1,5)
        if(i4==1)
        {
            text[3 + questions] += "#" + brand[i] + " seems like a pretty good choice"
        }
        if(i4==2)
        {
            text[3 + questions] += "#" +brand[i] + " is fairly reputable."
        }
        if(i4==3)
        {
            text[3 + questions] += "#" + string(dollars[i]) + " isn't too bad."
        }
        if(i4==4)
        {
            text[3 + questions] += "#" + string(dollars[i]) + " is a fairly hefty price"
        }
        if(i4 == 5)
        {
            text[3 + questions] += "#" + brand[i] + " isn't very high quality."
        }  
    }
    questions++
    isQAsked = true;
}
if((irandom_range(1,8)+ difficulty) >8 )//medium questions
{
    text[2+questions] = "*What's your take Johnson?"
    for(i = 0; i < 4; i++)
    {
        i4 = irandom_range(1,6)
        if(i4==1)
        {
            text[2 + questions] =text[2 +questions] + "#" + possibleChange[i,1] + " isn't such a bad idea if its only going to be " + string(dollars[i]);
        }
        if(i4==2)
        {
            text[2 + questions] += "#" + brand[i] + " is really only " + string(dollars[i]) + "?"
        }
        if(i4==3){
            text[2 + questions] += "#Is " + brand[i] + " going to work well for " + possibleChange[i,1] +"?"
        }
        if(i4==4)
        {
             text[2 + questions] += "#Do you really want to spend " + string(dollars[i]) + " on " + possibleChange[i,1] + "?";
        }
        if(i4 = 5)
        {
            text[2 + questions] += "#" +  brand[i] + " isn’t worth " + string(dollars[i]) + "$"
        }
        if(i4 =6)
        {
            text[2 + questions] += "#In my opinion " + string(dollars[i]) + " is too much for " + brand[i] + "."
        }
        
    }
    questions++
    isQAsked = true;
}

if((irandom_range(1,16)+difficulty) > 18)//hard
{
    text[2+questions] = "*What's your take Johnson?"
    for(i = 0; i < 4; i++)
    {
        i4 = irandom_range(1,4)
        if(i4==1)
        {
            text[2 + questions] += "#So we use " + brand[i] + " to " + possibleChange[i,0] + " and it will only be " + string(dollars[i]) + "$"
        }
         if(i4==2)
        {
            text[2 + questions] += "#" + possibleChange[i,1] + " with " + brand[i] + " is a steal at " + string(dollars[i]) + "$"
        }
         if(i4==3)
        {
            text[2 + questions] += "#We shoudn't pay " + string(dollars[i]) + "$ to " + possibleChange[i,0] + ", not if we use " + brand[i] 
        }
         if(i4==4)
        {
            text[2 + questions] += "#Theres no reason to pay " + string(dollars[i]) + " to " + possibleChange[i,0] + " using " + brand[i]
        }
        
    }
    questions++
    isQAsked = true;
}

text[3 + questions] = "Ok, that was great! On to our next speaker."
text[4 + questions] = "...";
text[5 + questions] = "...";

for(i = 0; i < array_length_1d(text); i++)
{
    object.text[i] = text[i];
}
object.prezLen = 2 + questions;


