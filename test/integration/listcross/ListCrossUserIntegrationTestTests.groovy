package listcross

import static org.junit.Assert.*
import org.junit.*

class ListCrossUserIntegrationTestTests {

    @Before
    void setUp() {
        // Setup logic here
    }

    @After
    void tearDown() {
        // Tear down logic here
    }

    @Test
    void testSomething() {
		def user = User.findByUsername('bmcnees')
		assertNotNull user
		//get all of the user lists
		def listCrossLists = user.listCrossLists
		assertNotNull listCrossLists
    }
}
