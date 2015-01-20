# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.destroy_all

Book.create!([
	{
title: "The Strategic Web Designer: How to Confidently Navigate the Web Design Process",
description: "In The Strategic Web Designer, Christopher Butler will teach you how to think about the web, and in doing so, prepare you to lead web projects from the critical inception phase through to the ongoing nurturing process every website needs.
That's what web strategy is all about: having a comprehensively informed point of view on the web that enables you to guide a web project intentionally, rather than reactively.",
price: 29.99,
quantity: 10
	},
	{
title: "Automate This: How Algorithms Came to Rule Our World",
description: "It used to be that to diagnose an illness, interpret legal documents, analyze foreign policy, or write a newspaper article you needed a human being with specific skills—and maybe an advanced degree or two.
These days, high-level tasks are increasingly being handled by algorithms that can do precise work not only with speed but also with nuance.
These “bots” started with human programming and logic, but now their reach extends beyond what their creators ever expected.
In this fascinating, frightening book, Christopher Steiner tells the story of how algorithms took over—and shows why the “bot revolution” is about to spill into every aspect of our lives, often silently, without our knowledge.
The May 2010 “Flash Crash” exposed Wall Street’s reliance on trading bots to the tune of a 998-point market drop and $1 trillion in vanished market value. But that was just the beginning. In Automate This, we meet bots that are driving cars, penning haiku, and writing music mistaken for Bach’s. They listen in on our customer service calls and figure out what Iran would do in the event of a nuclear standoff. There are algorithms that can pick out the most cohesive crew of astronauts for a space mission or identify the next Jeremy Lin.
	Some can even ingest statistics from baseball games and spit out pitch-perfect sports journalism indistinguishable from that produced by humans.
The interaction of man and machine can make our lives easier. But what will the world look like when algorithms control our hospitals, our roads, our culture, and our national security? What hap­pens to businesses when we automate judgment and eliminate human instinct? And what role will be left for doctors, lawyers, writers, truck drivers, and many others?
Who knows—maybe there’s a bot learning to do your job this minute.",
price: 39.07,
quantity: 20
	},
	{
title: "Programming iOS 5: Fundamentals of iPhone, iPad, and iPod touch Development",
description: "Get a solid grounding in the fundamentals of Cocoa Touch, and avoid problems during iPhone and iPad app development. With this revised and expanded edition, you’ll dig into Cocoa and learn how to work effectively with Objective-C and Xcode. This book covers iOS 5 and Xcode 4.3 in a rigorous, orderly fashion—ideal whether you’re approaching iOS for the first time or need a reference to bolster existing skills.
Many discussions have been expanded or improved. All code examples have been revised, and many new code examples have been added.
The new memory management system—ARC—is thoroughly explained and all code examples have been revised to use it.
New Objective-C features, such as declaration of instance variables in the class’s implementation section, are described and incorporated into the revised example code.
Discussion of how an app launches, and all code examples, are revised for project templates from Xcode 4.2 and later.
Other new Xcode features, including the Simulator’s Debug menu, are covered, with screen shots based on Xcode 4.2 and later.
The discussion of Instruments is expanded, with screen shots—by popular request!
Storyboards are explained and discussed.
The explanation of view controllers is completely rewritten to include iOS 5 features, such as custom parent view controllers and UIPageViewController.
The Controls chapter now includes iOS 5 interface customizability and the appearance proxy.
New features of interface classes are discussed, including tiling and animated images, new table view features, new alert view styles.
Coverage of frameworks such as Core Motion and AV Foundation is greatly expanded. New iOS 5 classes and frameworks are also discussed, including Core Image and UIDocument (and iCloud support).
Important iOS 5 changes that can break existing code are explicitly called out in the text and listed in the index.",
price: 34.99,
quantity: 16
	}
	])

p "Created #{Book.count} books"