//
//  HomeViewModel.swift
//  aPLS
//
//  Created by Mario Pandapotan Simarmata on 12/07/25.
//

import Foundation

final class HomeViewModel: ObservableObject {
    //    @Published var isExpanded: Int =
    
    let members = [
        Member(
            name: "Abdan",
            fullName: "Abdan Fauzan Nurtsani",
            image: DesignImages.abdan,
            gif: DesignGIFs.gifAbdan,
            color: DesignColors.yellow,
            colorGallup: DesignColorGallups.yellow,
            infoMember: InfoMember(age: "24 Years old", role: "Designer", gallup: "Deliberative"),
            linkMember: LinkMember(
                instagram: "https://www.instagram.com/abdanfzn/",
                linkedin: "https://www.linkedin.com/in/abdan-fauzan/"
            ),
            listAPLS: [
                APLS(keywords: "Understand", statement: "I believe that AI can support us in digesting and learning new information more effectively."),
                APLS(keywords: "Think", statement: "I believe we must still rely on our own thinking and push ourselves to think critically, so our ability for critical thinking doesn't decline."),
                APLS(keywords: "Easy", statement: "I'm confident that by utilizing AI in this Academy's learning process, everything becomes easier and more manageable."),
                APLS(keywords: "Process", statement: "I believe every piece of information provided by AI needs to be processed first, not just accepted blindly."),
                APLS(keywords: "Wise", statement: "I believe that if we don't use AI wisely, we might become too dependent on it and lose our awareness in the process."),
                APLS(keywords: "Fast", statement: "I believe that partnering with AI while working on tasks can help us complete them much faster.")
            ]
        ),
        
        Member(
            name: "Alif",fullName: "Muhamad Alif\nAnwar",
            image: DesignImages.alif,
            gif: DesignGIFs.gifAlif,
            color: DesignColors.red,
            colorGallup: DesignColorGallups.red ,
            infoMember: InfoMember(age: "22 Years old", role: "Designer", gallup: "Analytical"),
            linkMember: LinkMember(
                instagram: "https://www.instagram.com/a.lifanwar/",
                linkedin: "https://www.linkedin.com/in/muhamad-alif-anwar/"
            ),
            listAPLS: [
                APLS(keywords: "Journey", statement: "I believe that the journey of learning will never stop as long as we are willing to keep growing, even in the midst of rapid AI development."),
                APLS(keywords: "Never Stop", statement: "I believe that AI can help with many things without requiring a lot of resources. Therefore, I think there is no reason to stop learning, especially now that everything has become much easier."),
                APLS(keywords: "Direction", statement: "I believe that the decision to keep learning is in my hands, and I will not let AI control me by making me overly dependent on it."),
                APLS(keywords: "Challange", statement: "I believe that any difficulty can be overcome as long as we never stop learning. If we ever fall into the pit of failure, let it be a lesson that makes us better prepared and stronger when facing similar challenges in the future. Even though it may be tough, AI can be a learning partner that supports us in continuing to grow.")
            ]
        ),
        
        Member(
            name: "Filza",
            fullName: "Filza Rizki  Ramadhan",
            image:DesignImages.filza,
            gif: DesignGIFs.gifFilza,
            color: DesignColors.blue,
            colorGallup: DesignColorGallups.blue,
            infoMember: InfoMember(age: "22 Years old", role: "Designer", gallup: "Context"),
            linkMember: LinkMember(
                instagram: "https://www.instagram.com/filzarr/",
                linkedin: "https://www.linkedin.com/in/filza-rizki-ramadhan-17424b1b3/"
            ),
            listAPLS: [
                APLS(keywords: "Gathering Information", statement: "I believe AI can simplify and accelerate the process of gathering information for learning."),
                APLS(keywords: "Fast", statement: "I believe that using AI makes the learning process faster."),
                APLS(keywords: "Understanding the Concept", statement: "I believe that by using AI, the learning process can be better tailored to our abilities and understanding, allowing us to learn more quickly."),
                APLS(keywords: "Feedback", statement: "I believe that getting quick feedback whenever we want makes it easier for us to obtain information."),
                APLS(keywords: "Easy", statement: "I believe that with AI, all learning processes will become easier, and we will even be able to learn more in less time.")
            ]
        ),
        
        Member(
            name: "Mario",
            fullName: "Mario Pandapotan Simarmata",
            image: DesignImages.mario,
            gif: DesignGIFs.gifMario,
            color: DesignColors.green,
            colorGallup: DesignColorGallups.green,
            infoMember: InfoMember(age: "24 Years old", role: "Designer", gallup: "Individualization"),
            linkMember: LinkMember(
                instagram: "https://www.instagram.com/mario_pan/",
                linkedin: "https://www.linkedin.com/in/mario-pandapotan-simarmata/"
            ),
            listAPLS: [
                APLS(keywords: "Fast", statement: "I believe that AI can be used to provide information very quickly and save time in the learning process."),
                APLS(keywords: "Easy", statement: "I believe that AI can simplify the learning process and the evaluation of the learning outcomes we have achieved."),
                APLS(keywords: "Partner", statement: "I believe that AI can be a learning companion, a discussion partner, and a consultation buddy for me throughout the learning process."),
                APLS(keywords: "Wise", statement: "I believe that we must be wise in using AI, not blindly accepting information as it is, but remaining critical of the information it provides."),
                APLS(keywords: "Process", statement: "I believe that we should use AI wisely in learning, focusing more on the process of working through problems rather than just the final results it provides.")
            ]
        ),
        
        Member(
            name: "Yudha",
            fullName: "Yudha\nPratama",
            image: DesignImages.yudha ,
            gif: DesignGIFs.gifYudha,
            color: DesignColors.purple,
            colorGallup: DesignColorGallups.purple,
            infoMember: InfoMember(age: "26 Years old", role: "Designer", gallup: "Ideation"),
            linkMember: LinkMember(
                instagram: "https://www.instagram.com/ydhprtam/",
                linkedin: "https://www.linkedin.com/in/ydhprtam/"
            ),
            listAPLS: [
                APLS(keywords: "Information", statement: "I believe that all the information we receive is something we will learn and find useful."),
                APLS(keywords: "Sources", statement: "I believe that the learning resources we use so far are plentiful. In fact, everything we experience can be a learning experience."),
                APLS(keywords: "Connections", statement: "I believe that AI can connect us to the information we need."),
                APLS(keywords: "Fast", statement: "I believe that AI can speed up our access to information without the need for a lengthy process."),
                APLS(keywords: "Easy", statement: "I believe that with the help of AI, information gathering can be made easier."),
                APLS(keywords: "Useful", statement: "I believe that all information we receive is certainly useful."),
                APLS(keywords: "Wise", statement: " believe that we must use AI wisely to maintain the brain's natural abilities, such as critical thinking, a storehouse of ideas, and so on."),
                APLS(keywords: "Developing", statement: "I believe that the ultimate goal of learning is to shape a mindset and character that continues to grow and develop. With the help of AI, this will be easier and will develop along with it.")
            ]
        ),
    ]
}
