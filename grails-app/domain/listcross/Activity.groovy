package listcross

class Activity {
	
	String description
//	String completed
//	ActivityCategory category;
	
	static belongsTo=ActivityList
	
	String toString() {
		"$description"
	}
	
    static constraints = {
    }
}
