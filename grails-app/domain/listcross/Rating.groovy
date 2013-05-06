package listcross

class Rating {
	
	double rating
	String comments
	
	static belongsTo=[activity: Activity, user: User]
	
    static constraints = {
    }
	
	String toString() {
		"$id: $rating - $comments"
	}
}
