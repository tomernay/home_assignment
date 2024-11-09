import requests

def test_server(port, expected_status):
    try:
        response = requests.get(f"http://nginx:{port}")
        if response.status_code == expected_status:
            print(f"Server on port {port} passed.")
            return True
        else:
            print(f"Server on port {port} failed: Expected {expected_status}, got {response.status_code}.")
            return False
    except Exception as e:
        print(f"Failed to connect to server on port {port}: {e}")
        return False

if __name__ == "__main__":
    server1 = test_server(8080, 200) # expecting HTTP status 200
    server2 = test_server(8081, 503) # expecting HTTP status 503
    
    if server1 and server2:
        print("All tests passed.")
    else:
        print("Some tests failed.")
