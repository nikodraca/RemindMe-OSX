(* RemindMe! for OSX *)

using terms from application "Messages"
	
	on received text invitation theText from theBuddy for theChat
		accept theChat
	end received text invitation
	
	on received audio invitation theText from theBuddy for theChat
		accept theChat
	end received audio invitation
	
	on received video invitation theText from theBuddy for theChat
		accept theChat
	end received video invitation
	
	on received file transfer invitation theFileTransfer
		accept theFileTransfer
	end received file transfer invitation
	
	on buddy authorization requested theRequest
		accept theRequest
	end buddy authorization requested
	
	# The following are unused but need to be defined to avoid an error
	
	on message sent theMessage for theChat
		set msgContent to theMessage
		try
			
			if msgContent contains ("RemindMe! " as text) then
				
				set notificationMessage to "Added reminder"
				
				display notification notificationMessage with title "NotificationBot"
				delay 2
				
				set rem to msgContent
				
				tell application "Reminders"
					set newremin to make new reminder
					set name of newremin to rem
				end tell
				
				tell application "Reminders" to quit
				
			end if
		end try
	end message sent
	
	
	on message received theMessage from theBuddy for theChat
		set msgContent to theMessage
		try
			
			if msgContent contains ("RemindMe! " as text) then
				
				set notificationMessage to "Added reminder"
				
				display notification notificationMessage with title "NotificationBot"
				delay 2
				
				set rem to msgContent
				
				tell application "Reminders"
					set newremin to make new reminder
					set name of newremin to rem
				end tell
				
				tell application "Reminders" to quit
				
			end if
		end try
	end message received
	
	
	
	
	on chat room message received theMessage from theBuddy for theChat
		
	end chat room message received
	
	on active chat message received theMessage
		
	end active chat message received
	
	on addressed chat room message received theMessage from theBuddy for theChat
		
	end addressed chat room message received
	
	on addressed message received theMessage from theBuddy for theChat
		
	end addressed message received
	
	on av chat started
		
	end av chat started
	
	on av chat ended
		
	end av chat ended
	
	on login finished for theService
		
	end login finished
	
	on logout finished for theService
		
	end logout finished
	
	on buddy became available theBuddy
		
	end buddy became available
	
	on buddy became unavailable theBuddy
		
	end buddy became unavailable
	
	on completed file transfer
		
	end completed file transfer
end using terms from
