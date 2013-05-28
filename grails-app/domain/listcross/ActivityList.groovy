package listcross

class ActivityList {

	String title
	String description
	
	//static hasMany=[activityLists:ActivityList]
	static hasMany=[activities:Activity, users:User]
	static belongsTo=User
	
	String toString() {
		"$id: $title - $description"
	}
}
