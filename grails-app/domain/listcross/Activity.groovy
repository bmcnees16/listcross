package listcross

class Activity {
	
	String description
	
	static belongsTo=ActivityList
	
	String toString() {
		"$description"
	}
	
    static constraints = {
		description blank:false
    }
}
