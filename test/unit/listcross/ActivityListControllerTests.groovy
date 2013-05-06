package listcross



import org.junit.*
import grails.test.mixin.*

@TestFor(ActivityListController)
@Mock(ActivityList)
class ActivityListControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/activityList/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.activityListInstanceList.size() == 0
        assert model.activityListInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.activityListInstance != null
    }

    void testSave() {
        controller.save()

        assert model.activityListInstance != null
        assert view == '/activityList/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/activityList/show/1'
        assert controller.flash.message != null
        assert ActivityList.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/activityList/list'


        populateValidParams(params)
        def activityList = new ActivityList(params)

        assert activityList.save() != null

        params.id = activityList.id

        def model = controller.show()

        assert model.activityListInstance == activityList
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/activityList/list'


        populateValidParams(params)
        def activityList = new ActivityList(params)

        assert activityList.save() != null

        params.id = activityList.id

        def model = controller.edit()

        assert model.activityListInstance == activityList
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/activityList/list'

        response.reset()


        populateValidParams(params)
        def activityList = new ActivityList(params)

        assert activityList.save() != null

        // test invalid parameters in update
        params.id = activityList.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/activityList/edit"
        assert model.activityListInstance != null

        activityList.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/activityList/show/$activityList.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        activityList.clearErrors()

        populateValidParams(params)
        params.id = activityList.id
        params.version = -1
        controller.update()

        assert view == "/activityList/edit"
        assert model.activityListInstance != null
        assert model.activityListInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/activityList/list'

        response.reset()

        populateValidParams(params)
        def activityList = new ActivityList(params)

        assert activityList.save() != null
        assert ActivityList.count() == 1

        params.id = activityList.id

        controller.delete()

        assert ActivityList.count() == 0
        assert ActivityList.get(activityList.id) == null
        assert response.redirectedUrl == '/activityList/list'
    }
}
