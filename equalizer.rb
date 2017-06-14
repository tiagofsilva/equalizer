class Equalizer < Module

	def initialize(*attrs)
		@attrs = attrs
		define_method :eql? do |other|
			self.kind_of?(other.class) && all_attrs_match?(other)
		end

		define_method :all_attrs_match? do |other|
			puts ':attrs match!!'
			attrs.all? { |attr| self.send(attr) == other.send(attr) }			
		end
		
		private :all_attrs_match?
	end

end