if (typeof dwr == 'undefined' || dwr.engine == undefined) throw new Error('You must include DWR engine before including this file');

(function() {
  if (dwr.engine._getObject("StructureAjax") == undefined) {
    var p;
    
    p = {};
    p._path = '/dwr';

    /**
     * @param {function|Object} callback callback function or options object
     */
    p.getCategoryAPI = function(callback) {
      return dwr.engine._execute(p._path, 'StructureAjax', 'getCategoryAPI', arguments);
    };

    /**
     * @param {interface com.dotmarketing.portlets.categories.business.CategoryAPI} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.setCategoryAPI = function(p0, callback) {
      return dwr.engine._execute(p._path, 'StructureAjax', 'setCategoryAPI', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.checkDependencies = function(p0, callback) {
      return dwr.engine._execute(p._path, 'StructureAjax', 'checkDependencies', arguments);
    };

    /**
     * @param {function|Object} callback callback function or options object
     */
    p.getWidgets = function(callback) {
      return dwr.engine._execute(p._path, 'StructureAjax', 'getWidgets', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getStructureFields = function(p0, callback) {
      return dwr.engine._execute(p._path, 'StructureAjax', 'getStructureFields', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getSearchableStructureFields = function(p0, callback) {
      return dwr.engine._execute(p._path, 'StructureAjax', 'getSearchableStructureFields', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getStructureSearchFields = function(p0, callback) {
      return dwr.engine._execute(p._path, 'StructureAjax', 'getStructureSearchFields', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getKeyStructureFields = function(p0, callback) {
      return dwr.engine._execute(p._path, 'StructureAjax', 'getKeyStructureFields', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getStructureCategories = function(p0, callback) {
      return dwr.engine._execute(p._path, 'StructureAjax', 'getStructureCategories', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {class java.lang.String} p1 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getCategoriesTree = function(p0, p1, callback) {
      return dwr.engine._execute(p._path, 'StructureAjax', 'getCategoriesTree', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getDropDownList = function(p0, callback) {
      return dwr.engine._execute(p._path, 'StructureAjax', 'getDropDownList', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getDropDownOptions = function(p0, callback) {
      return dwr.engine._execute(p._path, 'StructureAjax', 'getDropDownOptions', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getRadioButtons = function(p0, callback) {
      return dwr.engine._execute(p._path, 'StructureAjax', 'getRadioButtons', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getCheckboxes = function(p0, callback) {
      return dwr.engine._execute(p._path, 'StructureAjax', 'getCheckboxes', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {class java.lang.String} p1 a param
     * @param {function|Object} callback callback function or options object
     */
    p.reorderfields = function(p0, p1, callback) {
      return dwr.engine._execute(p._path, 'StructureAjax', 'reorderfields', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getStructureDetails = function(p0, callback) {
      return dwr.engine._execute(p._path, 'StructureAjax', 'getStructureDetails', arguments);
    };

    /**
     * @param {interface java.util.Map} p0 a param
     * @param {interface java.util.Map} p1 a param
     * @param {int} p2 a param
     * @param {int} p3 a param
     * @param {interface java.util.List} p4 a param
     * @param {function|Object} callback callback function or options object
     */
    p.fetchStructures = function(p0, p1, p2, p3, p4, callback) {
      return dwr.engine._execute(p._path, 'StructureAjax', 'fetchStructures', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.fetchByIdentity = function(p0, callback) {
      return dwr.engine._execute(p._path, 'StructureAjax', 'fetchByIdentity', arguments);
    };
    
    dwr.engine._setObject("StructureAjax", p);
  }
})();

