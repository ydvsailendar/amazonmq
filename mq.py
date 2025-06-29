import boto3
import time
import json

logs = boto3.client('logs')

def lambda_handler(event, context):
    print(json.dumps(event, indent=2))
    detail = event['detail']
    event_name = detail['eventName']
    broker_id = detail['responseElements']['brokerId']

    log_group_names = [
        f"/aws/amazonmq/broker/{broker_id}/audit",
        f"/aws/amazonmq/broker/{broker_id}/general"
    ]

    # Wait for log groups to appear
    time.sleep(20)

    for log_group_name in log_group_names:
        try:
            if event_name == 'CreateBroker':
                logs.put_retention_policy(
                    logGroupName=log_group_name,
                    retentionInDays=365
                )
                print(f"Retention set: {log_group_name}")

            elif event_name == 'DeleteBroker':
                logs.delete_log_group(logGroupName=log_group_name)
                print(f"Deleted log group: {log_group_name}")

        except logs.exceptions.ResourceNotFoundException:
            print(f"Log group not found: {log_group_name}")
        except Exception as e:
            print(f"Error processing {log_group_name}: {str(e)}")

    return {
        "statusCode": 200,
        "body": f"Handled {event_name} for broker {broker_id}"
    }
