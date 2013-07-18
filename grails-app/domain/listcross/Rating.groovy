package listcross

class Rating {
	
	int rating
	String description
	Date crossDate

	static belongsTo=[activity:Activity, user:User]

	String toString() {
		"$rating : $crossDate : $description"
	}

    static constraints = {
    	rating(blank:false, min:1, max:10)
    	description(maxSize:1000, blank:true)
    	crossDate(nullable:false)
    }
}
