if (typeof dwr == 'undefined' || dwr.engine == undefined) throw new Error('You must include DWR engine before including this file');

(function() {
  if (dwr.engine._getObject("HostAjax") == undefined) {
    var p;
    
    p = {};
    p._path = '/dwr';

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.makeDefault = function(p0, callback) {
      return dwr.engine._execute(p._path, 'HostAjax', 'makeDefault', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.publishHost = function(p0, callback) {
      return dwr.engine._execute(p._path, 'HostAjax', 'publishHost', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.fetchByIdentity = function(p0, callback) {
      return dwr.engine._execute(p._path, 'HostAjax', 'fetchByIdentity', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {boolean} p1 a param
     * @param {int} p2 a param
     * @param {int} p3 a param
     * @param {function|Object} callback callback function or options object
     */
    p.findHostsForDataStore = function(p0, p1, p2, p3, callback) {
      return dwr.engine._execute(p._path, 'HostAjax', 'findHostsForDataStore', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {boolean} p1 a param
     * @param {int} p2 a param
     * @param {int} p3 a param
     * @param {function|Object} callback callback function or options object
     */
    p.findHostsPaginated = function(p0, p1, p2, p3, callback) {
      return dwr.engine._execute(p._path, 'HostAjax', 'findHostsPaginated', arguments);
    };

    /**
     * @param {function|Object} callback callback function or options object
     */
    p.findAllHostThumbnails = function(callback) {
      return dwr.engine._execute(p._path, 'HostAjax', 'findAllHostThumbnails', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.unpublishHost = function(p0, callback) {
      return dwr.engine._execute(p._path, 'HostAjax', 'unpublishHost', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.archiveHost = function(p0, callback) {
      return dwr.engine._execute(p._path, 'HostAjax', 'archiveHost', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.unarchiveHost = function(p0, callback) {
      return dwr.engine._execute(p._path, 'HostAjax', 'unarchiveHost', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.deleteHost = function(p0, callback) {
      return dwr.engine._execute(p._path, 'HostAjax', 'deleteHost', arguments);
    };

    /**
     * @param {class java.lang.String} p0 a param
     * @param {function|Object} callback callback function or options object
     */
    p.getHostSetupProgress = function(p0, callback) {
      return dwr.engine._execute(p._path, 'HostAjax', 'getHostSetupProgress', arguments);
    };
    
    dwr.engine._setObject("HostAjax", p);
  }
})();

