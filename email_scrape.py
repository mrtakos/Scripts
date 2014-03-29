import imaplib
import email
import time
import getpass

mail = imaplib.IMAP4_SSL('imap-mail.outlook.com', 993)
passwd = getpass.getpass()
mail.login('spagooder@outlook.com', passwd)
mail.list()
# Out: list of "folders" aka labels in gmail.
mail.select("inbox") # connect to inbox.

def CheckZillow():
	result, data = mail.search(None, '(UNSEEN FROM "no-reply@email.zillow.com")')
	ids = data[0] # data is a list.
	id_list = ids.split() # ids is a space separated string
	for eid in id_list:
		result, data = mail.fetch(eid, "(RFC822)") # fetch the email body (RFC822) for the given ID 
		raw_email = data[0][1]
		print raw_email

#result, data = mail.search(None, "ALL")
#result, data = mail.search(None, "UNSEEN")

#while True:
#	CheckZillow()
#	time.sleep(60)
CheckZillow()
