if (typeof dwr == 'undefined' || dwr.engine == undefined) throw new Error('You must include DWR engine before including this file');

(function() {
  if (dwr.engine._getObject("TagAjax") == undefined) {
    var p;
    
    p = {};
    p._path = '/dwr';

    /**
     * @param {function|Object} callback callback function or options object
     */
    p.getAllTags = function(callback) {
      return dwr.engine._execute(p._path, 'TagAjax', 'getAllTags', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getTagByName = function(p0, callback) {
      return dwr.engine._execute(p._path, 'TagAjax', 'getTagByName', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getTagByUser = function(p0, callback) {
      return dwr.engine._execute(p._path, 'TagAjax', 'getTagByUser', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {class java.lang.String} p1 a param
     * @param {class java.lang.String} p2 a param
     * @param {function|Object} callback callback function or options object
     */
    p.addTag = function(p0, p1, p2, callback) {
      return dwr.engine._execute(p._path, 'TagAjax', 'addTag', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {class java.lang.String} p1 a param
     * @param {class java.lang.String} p2 a param
     * @param {function|Object} callback callback function or options object
     */
    p.updateTag = function(p0, p1, p2, callback) {
      return dwr.engine._execute(p._path, 'TagAjax', 'updateTag', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.deleteTag = function(p0, callback) {
      return dwr.engine._execute(p._path, 'TagAjax', 'deleteTag', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {class java.lang.String} p1 a param
     * @param {function|Object} callback callback function or options object
     */
    p.deleteTag = function(p0, p1, callback) {
      return dwr.engine._execute(p._path, 'TagAjax', 'deleteTag', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getAllTag = function(p0, callback) {
      return dwr.engine._execute(p._path, 'TagAjax', 'getAllTag', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getTagInfoByName = function(p0, callback) {
      return dwr.engine._execute(p._path, 'TagAjax', 'getTagInfoByName', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getTagInodeByInode = function(p0, callback) {
      return dwr.engine._execute(p._path, 'TagAjax', 'getTagInodeByInode', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {class java.lang.String} p1 a param
     * @param {function|Object} callback callback function or options object
     */
    p.deleteTagInode = function(p0, p1, callback) {
      return dwr.engine._execute(p._path, 'TagAjax', 'deleteTagInode', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {class java.lang.String} p1 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getSuggestedTag = function(p0, p1, callback) {
      return dwr.engine._execute(p._path, 'TagAjax', 'getSuggestedTag', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getTagsByUser = function(p0, callback) {
      return dwr.engine._execute(p._path, 'TagAjax', 'getTagsByUser', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {class java.lang.String} p1 a param
     * @param {function|Object} callback callback function or options object
     */
    p.addTagFullCommand = function(p0, p1, callback) {
      return dwr.engine._execute(p._path, 'TagAjax', 'addTagFullCommand', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.deleteTagFullCommand = function(p0, callback) {
      return dwr.engine._execute(p._path, 'TagAjax', 'deleteTagFullCommand', arguments);
    };

    /**
     * @param {function|Object} callback callback function or options object
     */
    p.getUsersTags = function(callback) {
      return dwr.engine._execute(p._path, 'TagAjax', 'getUsersTags', arguments);
    };

    /**
     * @param {class [B} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.importTags = function(p0, callback) {
      return dwr.engine._execute(p._path, 'TagAjax', 'importTags', arguments);
    };
    
    dwr.engine._setObject("TagAjax", p);
  }
})();

