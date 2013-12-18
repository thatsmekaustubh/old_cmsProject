if (typeof dwr == 'undefined' || dwr.engine == undefined) throw new Error('You must include DWR engine before including this file');

(function() {
  if (dwr.engine._getObject("TemplateAjax") == undefined) {
    var p;
    
    p = {};
    p._path = '/dwr';

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.checkDependencies = function(p0, callback) {
      return dwr.engine._execute(p._path, 'TemplateAjax', 'checkDependencies', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.fetchByIdentity = function(p0, callback) {
      return dwr.engine._execute(p._path, 'TemplateAjax', 'fetchByIdentity', arguments);
    };

    /**
     * @param {interface java.util.Map} p0 a param
     * @param {interface java.util.Map} p1 a param
     * @param {int} p2 a param
     * @param {int} p3 a param
     * @param {interface java.util.List} p4 a param
     * @param {function|Object} callback callback function or options object
     */
    p.fetchTemplates = function(p0, p1, p2, p3, p4, callback) {
      return dwr.engine._execute(p._path, 'TemplateAjax', 'fetchTemplates', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.fetchTemplateImage = function(p0, callback) {
      return dwr.engine._execute(p._path, 'TemplateAjax', 'fetchTemplateImage', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {class java.lang.String} p1 a param
     * @param {class java.lang.String} p2 a param
     * @param {function|Object} callback callback function or options object
     */
    p.duplicatedTitle = function(p0, p1, p2, callback) {
      return dwr.engine._execute(p._path, 'TemplateAjax', 'duplicatedTitle', arguments);
    };
    
    dwr.engine._setObject("TemplateAjax", p);
  }
})();

