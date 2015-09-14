###
Copyright (c) 2012-2014 [DeftJS Framework Contributors](http://deftjs.org)
Open source under the [MIT License](http://en.wikipedia.org/wiki/MIT_License).
###

###*
* A Deferred is typically used within the body of a function that performs
* an asynchronous operation. When that operation succeeds, the Deferred
* should be resolved; if that operation fails, the Deferred should be rejected.
*
* Deferreds are the mechanism used to create new Promises. A Deferred has a
* single associated Promise that can be safely returned to external consumers
* to ensure they do not interfere with the resolution or rejection of the
* deferred operation.
###
Ext.define( 'Deft.promise.Deferred',
	extend: 'Ext.Deferred',
	alternateClassName: [ 'Deft.Deferred' ]
	
	statics:
		###*
		* Convenience method that returns a Promise resolved with the specified value.
		*
     	* @param {Mixed} value Value to resolve as either a fulfillment value or rejection reason.
		* @return {Deft.promise.Promise} Resolved Promise.
		###
		resolve: ( value ) ->
			return @callParent( arguments )
		
		###*
		* Convenience method that returns a new Promise rejected with the specified reason.
		*
		* @param {Error} reason Rejection reason.
		* @return {Deft.promise.Promise} Rejected Promise.
		###
		reject: ( reason ) ->
			return @callParent( arguments )
	
	constructor: ->
		return @callParent( arguments )

	###*
	* Resolve this Deferred with the specified value.
	*
	* Once a Deferred has been fulfilled or rejected, it is considered to be complete
	* and subsequent calls to resolve() or reject() are ignored.
	*
	* @param {Mixed} value Value to resolve as either a fulfillment value or rejection reason.
	###
	resolve: ( value ) ->
		return @callParent( arguments )

	###*
	* Reject this Deferred with the specified error.
	*
	* Once a Deferred has been rejected, it is considered to be complete
	* and subsequent calls to resolve() or reject() are ignored.
	*
	* @param {Error} reason Rejection reason.
	###
	reject: ( reason ) ->
	    return @callParent( arguments )

	###*
	* Update progress for this Deferred, if it is still pending.
	*
	* @param {Mixed} progress Progress value.
	###
	update: ( progress ) ->
		return @callParent( arguments )

	###*
	* Return the Promise of the future value of this Deferred.
	*
	* @return {Deft.promise.Promise} Promise of the future value.
	###
	getPromise: ->
		return @callParent( arguments )
)