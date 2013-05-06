package listcross



import org.junit.*
import grails.test.mixin.*

@TestFor(ActivityCategoryController)
@Mock(ActivityCategory)
class ActivityCategoryControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/activityCategory/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.activityCategoryInstanceList.size() == 0
        assert model.activityCategoryInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.activityCategoryInstance != null
    }

    void testSave() {
        controller.save()

        assert model.activityCategoryInstance != null
        assert view == '/activityCategory/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/activityCategory/show/1'
        assert controller.flash.message != null
        assert ActivityCategory.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/activityCategory/list'


        populateValidParams(params)
        def activityCategory = new ActivityCategory(params)

        assert activityCategory.save() != null

        params.id = activityCategory.id

        def model = controller.show()

        assert model.activityCategoryInstance == activityCategory
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/activityCategory/list'


        populateValidParams(params)
        def activityCategory = new ActivityCategory(params)

        assert activityCategory.save() != null

        params.id = activityCategory.id

        def model = controller.edit()

        assert model.activityCategoryInstance == activityCategory
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/activityCategory/list'

        response.reset()


        populateValidParams(params)
        def activityCategory = new ActivityCategory(params)

        assert activityCategory.save() != null

        // test invalid parameters in update
        params.id = activityCategory.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/activityCategory/edit"
        assert model.activityCategoryInstance != null

        activityCategory.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/activityCategory/show/$activityCategory.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        activityCategory.clearErrors()

        populateValidParams(params)
        params.id = activityCategory.id
        params.version = -1
        controller.update()

        assert view == "/activityCategory/edit"
        assert model.activityCategoryInstance != null
        assert model.activityCategoryInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/activityCategory/list'

        response.reset()

        populateValidParams(params)
        def activityCategory = new ActivityCategory(params)

        assert activityCategory.save() != null
        assert ActivityCategory.count() == 1

        params.id = activityCategory.id

        controller.delete()

        assert ActivityCategory.count() == 0
        assert ActivityCategory.get(activityCategory.id) == null
        assert response.redirectedUrl == '/activityCategory/list'
    }
}
