class Otel < ActiveRecord::Base
	validates_presence_of :Oname,:Oemail,:Ophone, :Oadress
	belongs_to :customers
end
