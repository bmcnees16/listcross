import listcross.Activity
import listcross.ActivityList
import listcross.ActivityList
import listcross.Role
import listcross.User
import listcross.UserRole



class BootStrap {
	def springSecurityService

	def init = {
		servletContext ->
		//******************************
		//Categories
		//******************************

		//******************************
		//Activities
		//These are the actual things to be done.  They can be shared across multiple lists
		//******************************
		def activity1 = new Activity(description:'Racoon Creek')
		if (!activity1.save()) {
			activity1.errors.allErrors.each{error -> println "An error occurred with activity1: ${error}"}
		}
		def activity2 = new Activity(description:'Ohiopyle')
		if (!activity2.save()) {
			activity2.errors.allErrors.each{error -> println "An error occurred with activity2: ${error}"}
		}
		def activity3 = new Activity(description:'Big Knob')
		if (!activity3.save()) {
			activity3.errors.allErrors.each{error -> println "An error occurred with activity3: ${error}"}
		}
		def activity4 = new Activity(description:'C & O Canal')
		if (!activity4.save()) {
			activity4.errors.allErrors.each{error -> println "An error occurred with activity4: ${error}"}
		}
		def activity5 = new Activity(description:'Rolling Acres')
		if (!activity5.save()) {
			activity5.errors.allErrors.each{error -> println "An error occurred with activity5: ${error}"}
		}
		def activity6 = new Activity(description:'Blackhawk')
		if (!activity6.save()) {
			activity6.errors.allErrors.each{error -> println "An error occurred with activity6: ${error}"}
		}
		
		def list1 = new ActivityList(title:'Bob & Karen\'s Camping Adventures',description:'All places Bob and Karen want to camp')
		list1.addToActivities(activity1)
		list1.addToActivities(activity2)
		list1.addToActivities(activity3)
		
		def list2 = new ActivityList(title:'Golfing with Dad', description:'Golf courses to go to with dad')
		list2.addToActivities(activity5)
		list2.addToActivities(activity6)
		
		

		//******************************
		//Roles
		//******************************
		def userRole = Role.findByAuthority("ROLE_USER") ?: new Role(authority: "ROLE_USER").save()


		//******************************
		//Users
		//******************************
		def user1 = new User(username:'bmcnees', firstName:'Bob', lastName:'McNees', enabled:true, password: 'pass')
		user1.addToActivityLists(list1)
		user1.addToActivityLists(list2)
		if (!user1.save()) {
			user1.errors.allErrors.each{error -> println "An error occurred with user1: {$error}"}
		}
		
		def user2 = new User(username:'kberkey', firstName:'Karen', lastName:'Berkey', enabled:true, password: 'pass')
		user2.addToActivityLists(list1)
		if (!user2.save()) {
			user2.errors.allErrors.each{error -> println "An error occurred with user2: {$error}"}
		}
		
		def user3 = new User(username:'jmcnees', firstName:'Jack', lastName:'McNees', enabled:true, password: 'pass')
		user3.addToActivityLists(list2)
		if (!user3.save()) {
			user3.errors.allErrors.each{error -> println "An error occurred with user3: {$error}"}
		}
		 
		//******************************
		//User Roles
		//******************************
		UserRole.create user1, userRole
		UserRole.create user2, userRole
		UserRole.create user3, userRole
		

	}


	def destroy = {
	}
}
