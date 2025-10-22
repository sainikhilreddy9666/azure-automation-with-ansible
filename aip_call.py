import requests

token_url = "https://login.microsoftonline.com/YOUR_TENANT_ID/oauth2/v2.0/token"
api_url = "https://YOUR_APIM_URL/petstore/pets"

payload = {
    'client_id': 'YOUR_CLIENT_ID',
    'scope': 'api://YOUR_API_APP_ID/.default',
    'client_secret': 'YOUR_CLIENT_SECRET',
    'grant_type': 'client_credentials'
}

# Get token
r = requests.post(token_url, data=payload)
token = r.json()['access_token']

# Call API
headers = {'Authorization': f'Bearer {token}'}
response = requests.get(api_url, headers=headers)

print(response.status_code)
print(response.json())

