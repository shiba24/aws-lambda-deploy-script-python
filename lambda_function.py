"""
AWS lambda function.
===================
General settings
===================
Trigger and Batchsize: As you set


===================
Function details
===================
inputs: event, context
    - event (dict)... We should investigate the detail of input dictionary.

    - context (dict)... not used


outputs: As you want

"""
from __future__ import print_function
import boto3
import json
import os


def lambda_handler(event, context):
    batchsize = len(event["Records"])
    print "Define your function here!"
