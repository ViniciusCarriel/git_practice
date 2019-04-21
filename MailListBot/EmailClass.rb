class Email
	def initialize()
		@countMsgs = 0
		@emailList = {}
	end

	def updateCount()
		@countMsgs = @countMsgs+1
	end

	def searchMessage(key)
		#get emailList and search for a certain string

	end

	def searchPatches(key)

	end
end

class Message < Email
	def initialize(isReply,humor)
		@date = Time.now
		@isReply = isReply
		@humor = humor
	end
end

class Subject < Message
	def initialize(fullName,subsystem)
		@fullName = fullName
		@subsystem = subsystem
	end
end

class Patch < Subject
	def initialize()
		@tags = []
	end
end

class Author < Message
	def initialize(authorEmail, collaborationCathegory,profile)
		@email = authorEmail
		@cathegory = collaborationCathegory
		@profile = profile
	end
end

class Content < Message
	def initialize(content, keywords)
		@rawContent = content
		@keyWords = keywords
	end

endclass Email
	def initialize()
		@countMsgs = 0
		@emailList = {}
	end

	def updateCount()
		@countMsgs = @countMsgs+1
	end

	def searchMessage(key)
		#get emailList and search for a certain string

	end

	def searchPatches(key)

	end
end

class Message < Email
	def initialize(isReply,humor)
		@date = Time.now
		@isReply = isReply
		@humor = humor
	end
end

class Subject < Message
	def initialize(fullName,subsystem)
		@fullName = fullName
		@subsystem = subsystem
	end
end

class Patch < Subject
	def initialize()
		@tags = []
	end
end

class Author < Message
	def initialize(authorEmail, collaborationCathegory,profile)
		@email = authorEmail
		@cathegory = collaborationCathegory
		@profile = profile
	end
end

class Content < Message
	def initialize(content, keywords)
		@rawContent = content
		@keyWords = keywords
	end

end
