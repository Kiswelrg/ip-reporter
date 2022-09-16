import smtplib, ssl
import socket

def sendEmail(ip):
    port = 465  # For SSL (or you can swtich to the other protocal)
    smtp_server = "" # Choose your smtp server of your email
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
ipv4 = s.getsockname()[0]
s.close()

with open('/YourFilePath/ip.txt','r+',encoding='utf-8') as f:
    if f.read() != ipv4 and ipv4 is not None:
        f.seek(0)
        f.truncate()
        f.write(ipv4)
        sendEmail(ipv4)


