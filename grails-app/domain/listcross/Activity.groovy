package listcross

class Activity {
	
	String description
	
	static belongsTo=ActivityList
	static hasMany=[ratings:Rating]
	
	String toString() {
		"$description"
	}
	
    static constraints = {
		description blank:false
    }
}
