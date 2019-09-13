class CollectionRenderer < Renderer
	private
	def object_serialization
		@object.map { |object| object.serialize object_serialization_options }
	end

	def object_serialization_options
		@options.slice :include
	end

	def collection_serialization_error
		serialization_error 'The object provided must be a collection'
	end

	def validate
		super
		validate_collection
	end

	def validate_collection
		raise collection_serialization_error unless is_a_collection?
	end

	def collection_is_not_paginable?
		not @object.respond_to? :current_page
	end

	def render_successful_response
		response
	end
end