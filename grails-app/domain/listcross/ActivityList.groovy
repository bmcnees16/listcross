package listcross

class ActivityList {

	String title
	String description

	static hasMany=[activities:Activity, users:User]
	static belongsTo=User
	
	String toString() {
		"$id: $title - $description"
	}
	
	static constraints = {
		title blank:false
		description blank:false
	}
}
