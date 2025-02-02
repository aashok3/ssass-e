#!/bin/bash
# This script is called from Web server to stop SSASSE in individual sensor boxes

#Kill Local Inference Engine
sleep 2
ssh -i /home/ssasse/.ssh/ssass-e.pem -o StrictHostKeyChecking=no ssasse@192.168.3.254 "cd ~/git/evidencecollection; sh kill_ssasse.sh"

#Kill Active Scanner on Active1
ssh -i /home/ssasse/.ssh/ssass-e.pem -o StrictHostKeyChecking=no ssasse@172.17.0.90 "cd ~/git/evidencecollection; sh kill_ssasse.sh;"

#Kill Active Scanner on Active2
ssh -i /home/ssasse/.ssh/ssass-e.pem -o StrictHostKeyChecking=no ssasse@172.17.0.91 "cd ~/git/evidencecollection; sh kill_ssasse.sh;"

