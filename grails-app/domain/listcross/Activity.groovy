package listcross

class Activity {
	
	String description
	ActivityCategory category;
	
	//static belongsTo=ActivityList
	
	static hasMany=[listCrossLists:ActivityList, ratings:Rating]
	static belongsTo=ActivityList
	
	String toString() {
		"$category: $description"
	}
	
    static constraints = {
    }
}
