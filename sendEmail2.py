import smtplib, ssl
import socket

def sendEmail(ip):
    port = 465  # For SSL
    smtp_server = ""
    sender_email = ""  # Enter your address
    receiver_email = ""  # Enter receiver address
    password = ''

    message = """From: <who> \r\nSubject: Hi there, {} 

    This message is sent from Python.""".format(ip)

    print(message)

    context = ssl.create_default_context()
    with smtplib.SMTP_SSL(smtp_server, port, context=context) as server:
        server.login(sender_email, password)
        server.sendmail(sender_email, receiver_email, message)


s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.connect(("8.8.8.8", 80))
s.close()

import itertools
import time

for _ in itertools.repeat(None, 1000):
    time.sleep(86400)
    ipv4 = s.getsockname()[0]
    sendEmail(ipv4)

