from datetime import datetime
from helpers.api import VeracodeAPI


def date_print(string):
    now = datetime.utcnow().strftime("[%Y-%m-%d %H:%M:%S UTC]")
    print(now + " " + string)


def main():
    date_print("Veracode Static Scan Automation Starting...")
    api = VeracodeAPI()

    latest_app_profiles_xml = api.get_app_list()
    print(latest_app_profiles_xml)



if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        date_print("Exiting...")
