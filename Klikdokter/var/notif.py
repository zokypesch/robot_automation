import base64
from robot.api import logger
import re
from robot.libraries.BuiltIn import BuiltIn
from slackclient import SlackClient
import datetime
import json 

def send_repot_slack(name, status, mode='development'):
    
    if  mode == 'development':
        return True
    token   = 'xoxp-473022294595-473022295763-473027000131-fbaa6722732bb82594c564ccf75a1a88'
    channel = 'klikdokter-stage'
    username= 'AutomationBot'


    selenium = BuiltIn().get_library_instance('Selenium2Library')
    session_id = selenium._current_browser().session_id
    timestamp = datetime.datetime.now()


    message = " \
    Robot test is Running  \n \
    'Case Name:' '%s' \n \
    'Status:' '%s' \n \
    'Timestamp:' '%s' \n \
    'Session:' '%s' \n \
    'See log error in'  %s \
    " % (name,status,timestamp,session_id, "https://www.staging.klikdokter.com/report/report.html")
    
    sc = SlackClient(token)
    sc.api_call('chat.postMessage', channel=channel,
               text=message, username='AutomationBot',
               icon_emoji=':robot_face:')
               